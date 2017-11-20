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
        $wechatObj->getMenu();
    }

    public function qrcode() {
        $wechatObj = new \WechatCallbackApi();
        $qrcode = $wechatObj->getqrcode();

        dump($qrcode);
    }
}
