<?php
namespace Home\Controller;
use Think\Controller;
Vendor('Wx.Wx', dirname(__FILE__)."/../");

class IndexController extends Controller {

    public function index() {
        $wechatObj = new \WechatCallbackApi();
        if (isset($_GET['echostr'])) {
            $wechatObj->valid();
        }else{
            $wechatObj->responseMsg();
        }
    }

    public function menu() {
        $wechatObj = new \WechatCallbackApi();
        $wechatObj->setMenu();
    }

    public function qrcode() {
        $wechatObj = new \WechatCallbackApi();
        $id = I("id\d");
        if (in_array($id, [10000, 10001, 10002, 10003, 10004])) {
            $qrcode = $wechatObj->getqrcode();
        }

        dump($qrcode);
    }
}
