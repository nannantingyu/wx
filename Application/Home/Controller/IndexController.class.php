<?php
namespace Home\Controller;
use Think\Controller;
Vendor('Wx.Wx', dirname(__FILE__)."/../");

class IndexController extends Controller {

    private $wechatObj;
    public function __construct(){
        $this->wechatObj = new \WechatCallbackApi();
        parent::__construct();
    }

    public function index() {
        if (isset($_GET['echostr'])) {
            $this->wechatObj->valid();
        }else{
            $this->wechatObj->responseMsg();
        }
    }

    public function html() {
        $this->display("Index/index");
    }

    public function menu() {
        $this->wechatObj->setMenu();
    }

    public function qrcode() {
        $id = I("id/d");

        if (in_array($id, [10000, 10001, 10002, 10003, 10004])) {
            $qrcode = $this->wechatObj->getqrcode($id);
            print_r($qrcode);
        }
    }

    public function sendtemplate() {
        $touser = I('post.touser');
        $url = I('post.url');
        if(is_null($touser) or is_null($url)) {
            return array(
                'state'=> -1,
                'msg'=> '参数不正确哦'
            );
        }

        $result = $this->wechatObj->receiveTemplate($touser, $url);
        return array(
            'state' => $result['errcode'],
            'msg' => $result['errmsg']
        );
    }

    public function test() {
        $content = D("weixin_article")->getLatestArticleForWinxin(4);
    }

    public function sendmessage() {
        $articles = M("weixin_article")
            ->join("crawl_weixin_article_detail on crawl_weixin_article.id=crawl_weixin_article_detail.id")
            ->order("publish_time desc, hits desc, crawl_weixin_article.updated_time desc")
            ->limit(4)
            ->select();

        $msg = ["articles"=>[]];
        $savepath = $_SERVER['DOCUMENT_ROOT']."/Public/Uploads/";
        foreach($articles as $article) {
            $type = "image";
            $filepath = json_decode($article['image'])[0];
            $savename = $savepath . basename($filepath);

            if(!file_exists($savename))
            {
                file_put_contents($savename, file_get_contents($filepath));
            }

            if(!file_exists($savename)) {
                $savename = $savepath."zhuanshu.jpg";
            }

            if(class_exists('\CURLFile')) {
                $filedata = array("media"=> new \CURLFile($savename));
            }
            else {
                $filedata = array("media"=> "@".$savename);
            }

            $media_id = $this->wechatObj->uploadfile($type, $filedata);
            $m = [
                "author"=> "喃喃书社",
                "title"=> mb_substr($article['title'], 0, 10)."...",
                "content"=> $article['body'],
                "digest"=> mb_substr($article['description'], 0, 12)."...",
                "thumb_media_id"=> $media_id['media_id'],
                "content_source_url"=> "https://www.yjshare.cn/blog_".$article['id']
            ];

            $msg["articles"][] = $m;
        }


        $content_id = $this->wechatObj->uploadNews(json_encode($msg, JSON_UNESCAPED_UNICODE));
        $send_media_id = $content_id['media_id'];

        $followers = $this->wechatObj->getFollower();
        //目前测试号无法群发消息，订阅号认证后才能发送
        /**
        $send_msg = [
            "touser"=> $followers,
            "mpnews"=> [
                "media_id"=> $send_media_id
            ],
            "msgtype"=> "mpnews",
            "send_ignore_reprint"=> 0
        ];

        $result2 = $this->wechatObj->multisend(json_encode($send_msg, JSON_UNESCAPED_UNICODE));
        */

        foreach($followers as $user) {
            $result = $this->wechatObj->previewMsg($send_media_id, $user);
        }

        dump($result);
    }
}
