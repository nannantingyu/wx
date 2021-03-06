<?php
use Think\Log;
header('Content-type:text');
define("TOKEN", "NANNANTINGYU");

require_once "Response.php";

class WechatCallbackApi
{
    private $response;
    public function __construct() {
        $this->response = new WxResponse();
    }

    public function valid()
    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            header('content-type:text');
            echo $echoStr;
            exit;
        }
    }

    private function checkSignature()
    {
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];

        $token = TOKEN;
        $tmpArr = array($token, $timestamp, $nonce);
        sort($tmpArr, SORT_STRING);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );

        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }

    public function getAccessToken() {
//        $appid = "wx08102f9708925685";
//        $appsecret = "eae30743c861f7853a27e6c6e5af4405";
        $appid = 'wx4ed1bb58b760662b';
        $appsecret = '670f41a3eb4074247c6963f8a2afcebf';
        $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($ch);
        curl_close($ch);
        $jsoninfo = json_decode($output, true);
        $access_token = $jsoninfo["access_token"];

        return $access_token;
    }

    public function setMenu() {
        $jsonmenu = array("button"=>[
            [
                "name"=>"天气预报",
                "sub_button"=> [
                    [
                        "type"=>"click", "name"=>"北京天气", "key"=>"天气北京"
                    ],
                    [
                        "type"=>"view", "name"=>"本地天气", "url"=>"http://www.yjshare.cn"
                    ]
                ]
           ],
           [
               "name"=>"今日推荐",
               "sub_button"=> [
                   [
                       "type"=>"click", "name"=>"Python", "key"=>"Python"
                   ],
                   [
                       "type"=>"click", "name"=>"PHP", "key"=>"PHP"
                   ],
                   [
                       "type"=>"click", "name"=>"小说", "key"=>"小说"
                   ],
                   [
                       "type"=>"click", "name"=>"散文", "key"=>"散文"
                   ]
               ]
           ]
        ]);

        $access_token = $this->getAccessToken();
        $url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=".$access_token;
        $result = $this->https_request($url, json_encode($jsonmenu, JSON_UNESCAPED_UNICODE));

        var_dump($result);
    }

    private function https_request($url,$data = null){
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)){
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($curl);
        curl_close($curl);
        return $output;
    }

    public function responseMsg()
    {
        $postStr = file_get_contents("php://input");
        if (!empty($postStr)){
            $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
            $RX_TYPE = trim($postObj->MsgType);

            //消息类型分离
            switch ($RX_TYPE)
            {
                case "event":
                    $result = $this->receiveEvent($postObj);
                    break;
                case "text":
                    if (strstr($postObj->Content, "第三方")){
                        $result = $this->relayPart3("http://www.fangbei.org/test.php".'?'.$_SERVER['QUERY_STRING'], $postStr);
                    }else{
                        $result = $this->receiveText($postObj);
                    }
                    break;
                case "image":
                    $result = $this->response->receiveImage($postObj);
                    break;
                case "location":
                    $result = $this->response->receiveLocation($postObj);
                    break;
                case "voice":
                    $result = $this->response->receiveVoice($postObj);
                    break;
                case "video":
                    $result = $this->response->receiveVideo($postObj);
                    break;
                case "link":
                    $result = $this->response->receiveLink($postObj);
                    break;
                default:
                    $result = "";
                    break;
            }

            echo $result;
        }else {
            echo "";
            exit;
        }
    }

    /**
     * 接收文本
     * @param $object
     * @return string
     */
    public function receiveText($object)
    {
        $keyword = trim($object->Content);
        //多客服人工回复模式
        if (strstr($keyword, "请问在吗") || strstr($keyword, "在线客服")){
            $result = $this->response->transmitService($object);
            return $result;
        }

        //自动回复模式
        if (strstr($keyword, "文本")){
            $content = "这是个文本消息";
        }else if (strstr($keyword, "表情")){
            $content = "中国：".$this->response->bytes_to_emoji(0x1F1E8).$this->response->bytes_to_emoji(0x1F1F3)."\n仙人掌：".$this->response->bytes_to_emoji(0x1F335);
        }else if (strstr($keyword, "单图文")){
            $content = array();
            $content[] = array("Title"=>"市场趋势要紧紧抓在手里!你知道广州咋做的吗?",  "Description"=>"市场趋势要紧紧抓在手里!你知道广州咋做的吗?", "PicUrl"=>"http://image.yjshare.cn/images/8.jpg", "Url" =>"http://www.yjshare.cn/blog_21810");
        }else if (strstr($keyword, "图文") || strstr($keyword, "多图文")){
            $content = array();
            $content[] = array("Title"=>"五常大米虽然好吃,但也有一些需要注意哦!", "Description"=>"五常大米虽然好吃,但也有一些需要注意哦!", "PicUrl"=>"http://image.yjshare.cn/images/4.jpg", "Url" =>"http://www.yjshare.cn/blog_1");
            $content[] = array("Title"=>"水稻育种家田永太:好稻种就是农民所有念想的希望!", "Description"=>"水稻育种家田永太:好稻种就是农民所有念想的希望!", "PicUrl"=>"http://image.yjshare.cn/images/5.jpg", "Url" =>"http://www.yjshare.cn/blog_10496");
            $content[] = array("Title"=>"男人为什么离不开酒?写的太好了,句句入骨!", "Description"=>"男人为什么离不开酒?写的太好了,句句入骨!", "PicUrl"=>"http://image.yjshare.cn/images/6.jpg", "Url" =>"http://www.yjshare.cn/blog_1897");
        }else if (strstr($keyword, "音乐")){
            $content = array("Title"=>"惠化洞", "Description"=>"请回答1988", "MusicUrl"=>"http://image.yjshare.cn/images/%E7%BB%B5%E7%BE%8A.mp3", "HQMusicUrl"=>"http://image.yjshare.cn/images/%E6%83%A0%E5%8C%96%E6%B4%9E.mp3");
        }else{
            $content = date("Y-m-d H:i:s",time())."\nOpenID：".$object->FromUserName."\n Captain_tu";
        }

        if(is_array($content)){
            if (isset($content[0])){
                $result = $this->response->transmitNews($object, $content);
            }else if (isset($content['MusicUrl'])){
                $result = $this->response->transmitMusic($object, $content);
            }
        }else{
            $result = $this->response->transmitText($object, $content);
        }

        return $result;
    }

    /**
     * 接收事件
     * @param $object
     * @return string
     */
    private function receiveEvent($object)
    {
        switch ($object->Event)
        {
            case "subscribe":
                $content = "欢迎关注喃喃书社";
                $content .= (!empty($object->EventKey))?("\n来自二维码场景 ".str_replace("qrscene_","",$object->EventKey)):"";
                break;
            case "unsubscribe":
                $content = "取消关注";
                break;
            case "CLICK":
                switch ($object->EventKey)
                {
                    case "Python":
                        $content = array();
                        $content[] = array("Title"=>"Python入门到放弃", "Description"=>"", "PicUrl"=>"http://image.yjshare.cn/images/2.jpg", "Url" =>"http://www.yjshare.cn/blog_21807");
                        break;
                    default:
                        $content = "点击菜单：".$object->EventKey;
                        break;
                }
                break;
            case "VIEW":
                $content = "跳转链接 ".$object->EventKey;
                break;
            case "SCAN":
                $content = "扫描场景 ".$object->EventKey;
                break;
            case "LOCATION":
                $content = "上传位置：纬度 ".$object->Latitude.";经度 ".$object->Longitude;
                break;
            case "scancode_waitmsg":
                if ($object->ScanCodeInfo->ScanType == "qrcode"){
                    $content = "扫码带提示：类型 二维码 结果：".$object->ScanCodeInfo->ScanResult;
                }else if ($object->ScanCodeInfo->ScanType == "barcode"){
                    $codeinfo = explode(",",strval($object->ScanCodeInfo->ScanResult));
                    $codeValue = $codeinfo[1];
                    $content = "扫码带提示：类型 条形码 结果：".$codeValue;
                }else{
                    $content = "扫码带提示：类型 ".$object->ScanCodeInfo->ScanType." 结果：".$object->ScanCodeInfo->ScanResult;
                }
                break;
            case "scancode_push":
                $content = "扫码推事件";
                break;
            case "pic_sysphoto":
                $content = "系统拍照";
                break;
            case "pic_weixin":
                $content = "相册发图：数量 ".$object->SendPicsInfo->Count;
                break;
            case "pic_photo_or_album":
                $content = "拍照或者相册：数量 ".$object->SendPicsInfo->Count;
                break;
            case "location_select":
                $content = "发送位置：标签 ".$object->SendLocationInfo->Label;
                break;
            default:
                $content = "receive a new event: ".$object->Event;
                break;
        }

        if(is_array($content)){
            if (isset($content[0]['PicUrl'])){
                $result = $this->transmitNews($object, $content);
            }else if (isset($content['MusicUrl'])){
                $result = $this->transmitMusic($object, $content);
            }
        }else{
            $result = $this->response->transmitText($object, $content);
        }
        return $result;
    }
}