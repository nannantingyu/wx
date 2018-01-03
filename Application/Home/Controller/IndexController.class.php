<?php
namespace Home\Controller;
use Think\Controller;
Vendor('Wx.Wx', dirname(__FILE__)."/../");

class IndexController extends Controller {

    private $wechatObj;
    public function __construct(){
        $this->wechatObj = new \WechatCallbackApi();
    }

    public function index() {
echo 123345;die;
        if (isset($_GET['echostr'])) {
            $this->wechatObj->valid();
        }else{
            $this->wechatObj->responseMsg();
        }
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

    public function sendmessage() {echo(12345);die;
        $articles = M("weixin_article")
            ->join("crawl_weixin_article_detail on crawl_weixin_article.id=crawl_weixin_article_detail.id")
            ->order("hits desc")
            ->order("publish_time desc")
            ->limit(2)
            ->select();
echo 777777;
        print_r($articles);
die;
        $msg = [];
        foreach($articles as $article) {

            $type = "image";
            $filepath = json_decode($article['image'])[0];
            $filedata = array("media"=> file_get_contents($filepath));

            $media_id = $this->wechatObj->uploadfile($type, $filedata);
            dump($media_id);

            $m = [
                "author"=> "喃喃书社",
                "title"=> $article['title'],
                "content"=> $article['body'],
                "digest"=> $article['description']
            ];

            $msg[] = $m;
        }

        dump($msg);
    }
}
