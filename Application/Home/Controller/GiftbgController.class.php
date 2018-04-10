<?php
namespace Home\Controller;
use Think\Controller;
class GiftbgController extends Controller {
    public function index(){
        $giftbg = M('giftcard_senduser')
            ->join('left join elephant_zhu on giftcard_senduser.tj_samplenum = elephant_zhu.sampleNo')
            ->where(array('openid'=>session('openid'),'tj_samplenum'=>I('get.sample')))
            ->field('tjName,headimgurl,tjSex,elephant_zhu.risk, level,tj_samplenum')
            ->find();

        $color = "blue";
        $avg = 1;
        $mine = $giftbg['risk'];
        $msg = "RR值小于1，为疾病保护因素，会降低疾病的患病风险。";
        if($giftbg["level"] == "高") {
            $color = "pink";
            $avg = 1 / $mine;
            $mine = 1;
            $msg = "RR值大于1，为疾病保护因素，会降低疾病的患病风险。";
        }

        $color = ($giftbg["level"] == "高"?"pink":"blue");
        $package = I('package');
        $this->assign('color', $color);
        $this->assign('package', $package);
        $this->assign('giftbg', $giftbg);
        $this->assign('avg', $avg);
        $this->assign('mine', $mine);
        $this->assign('msg', $msg);
        $this->display();
    }

    public function healthy(){
        $sampleno = I("get.sampleno");
        $giftbg = M('elephant_zhu')
            ->where(array('sampleNo'=>$sampleno))
            ->field('level')
            ->find();
        $this->assign("level", $giftbg['level']);
        $this->display();
    }

    public function science(){
        $sampleno = I("get.sampleno");
        $ret = $this->getgene($sampleno);
        $this->assign("ret", $ret);
        $this->display();
    }

    public function getgene($sampleno) {
        $sql = "select elephant_zi.geneName, elephant_zi.rsNo, elephant_zi.geneType, elephant_zi.personRisk from elephant_zi, (select klf,aldh,nos from elephant_zhu where sampleNo='".$sampleno."')g ".
            "where (elephant_zi.geneName='KLF15' and elephant_zi.geneType=g.klf) OR ".
            "(elephant_zi.geneName='ALDH2' and elephant_zi.geneType=g.aldh) OR ".
            "(elephant_zi.geneName='NOS3' and elephant_zi.geneType=g.nos);";

        $ret = M()->query($sql);
        return $ret;
    }

    public function share(){
        $_SESSION['openid'] = 'oeKeMwam_whQsmmgEnpsNxWfszbA';
        $sampleno = I("get.sampleno");
        $giftbg = M('giftcard_senduser')
            ->join('left join elephant_zhu on giftcard_senduser.tj_samplenum = elephant_zhu.sampleNo')
            ->where(array('openid'=>session('openid'),'tj_samplenum'=>$sampleno))
            ->field('tjName,headimgurl,tjSex,elephant_zhu.risk, level')
            ->find();

        $color = "blue";
        $info = "患病风险低于一般人群，但仍需关注自身健康，\n保持健康合理的生活方式呦。";
        if($giftbg['level'] == '高') {
            $color = "pink";
            $info = "遗传学角度的高风险，不代表一定会患病，切勿紧张，但须及早预防。";
        }
        $this->assign('color', $color);
        $this->assign('giftbg',$giftbg);
        $this->assign('info',$info);

        vendor( 'jssdk.jssdk' );
        $jssdk = new \jssdk(C('APPID'), C('SECRET'));
        $data = $jssdk->getSignPackage();
        $this->assign('data',$data);
        $this->display();
    }

    public function shengcheng(){
        $sampleno = I("get.sampleno");
        session("openid", "oeKeMwam_whQsmmgEnpsNxWfszbA");
        if($sampleno) {
            $pos = M('elephant_zhu')
                ->where(array('sampleNo'=>$sampleno))
                ->field('klf, aldh, nos')
                ->find();

            $giftbg = M('giftcard_senduser')
                ->join('left join elephant_zhu on giftcard_senduser.tj_samplenum = elephant_zhu.sampleNo')
                ->where(array('openid'=>session('openid'),'tj_samplenum'=>$sampleno))
                ->field('tjName,headimgurl,tjSex,elephant_zhu.risk, level')
                ->find();

            $info = "患病风险低于一般人群，但仍需关注自身健康，\n保持健康合理的生活方式呦。";
            if($giftbg['level'] == '高') {
                $info = "患病风险高于一般人群，但仍需关注自身健康，\n保持健康合理的生活方式呦。";
            }

            define("PUBLICS", "./Public");
            //$text = iconv("gb2312","utf-8",$text); //防止中文乱码
            $size = 26; //文字大小
            $font = PUBLICS."/ttf/yahei.TTF"; //字体user-img
            $font_heiti = PUBLICS."/ttf/heiti.TTF"; //字体user-img
            $pict = PUBLICS."/giftcard/image/base.jpg"; //目标图片
            //生成图片
            //header('Content-type:image/jpeg');
            //1、想要显示在图片上面的画

            //2、获得想要的图片的高度
            $img = imagecreatefromjpeg($pict);

            $height = imagesy($img);

            //3、如果说我想进行写入的话必须分成3份
            $eve = $height/2; //30
            $fontColor = imagecolorallocate($img,251,137,137);

            imagettftext($img, 36, 0, 95, 140, $fontColor, $font, $giftbg['tjname']);
            imagettftext($img, 36, 0, 460, 225,$fontColor, $font, "患病风险".$giftbg['level']);
            imagettftext($img, 120, 0, 95, 480,$fontColor, $font_heiti, $giftbg['risk'] * 100);
            imagettftext($img, 30, 0, 100, 1220,$fontColor, $font, $info);
            imagettftext($img, 24, 0, 430, 1450,$fontColor, $font, $pos['klf']);
            imagettftext($img, 24, 0, 430, 1518,$fontColor, $font, $pos['aldh']);
            imagettftext($img, 24, 0, 430, 1585,$fontColor, $font, $pos['nos']);

            //4
            $url = PUBLICS."/share/";
            $imgname = time().".jpg";
            $pit = $url.$imgname;
            //5、输出图片
            imagejpeg($img,$pit);
            if(file_exists($pit)){
//                $this->redirect("giftbg/fenxiang","url=".$imgname);
                $this->ajaxReturn(array("url"=>$imgname, "state"=>1));
            }
            else {
                $this->ajaxReturn(array("url"=>$imgname, "state"=>-1));
            }
        }
    }

    public function fenxiang(){
        if($_GET['url']){
            ///////////////////////////////////////引入分享的jssdk文件
            vendor( 'jssdk.jssdk' );
            $jssdk = new \jssdk(C('APPID'), C('SECRET'));
            $data = $jssdk->getSignPackage();
            $this->assign('data',$data);
            ///////////////////////////////////////把图片路径付给页面
            $this->assign("img",$_GET['url']);
            $this->display();
        }
    }
}