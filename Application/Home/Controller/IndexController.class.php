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
}
