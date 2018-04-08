/**
 * Created by dell on 2017-12-14.
 */
$(function(){
    $("#tjName").blur(function(){
        if(!$("#tjName").val()){
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写您的姓名");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("select[name='tjSex']").blur(function(){
        if($("select[name='tjSex'] option:selected").val() == ''){
            $(this).parent().css("border","2px solid #f33131");
            tishi("请选择您的性别");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("#tjAge").blur(function(){
        if(!/^\d+$/.test($("#tjAge").val()) || parseInt($("#tjAge").val()) > 130 || parseInt($("#tjAge").val()) < 0){
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写正确的年龄");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("#tjTel").blur(function(){
        if(!/^1[34578]\d{9}$/.test($("#tjTel").val())) {
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写正确的联系电话");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("#moreAddress").blur(function(){
        if(!$("#moreAddress").val()){
            $(this).parent().parent().css("border","2px solid #f33131");
            tishi("请补充您的住址");
            return false;
        }else{
            $(this).parent().parent().removeAttr("style");
        }
    });
    $("input[name='onsetAge']").blur(function(){
        if(!/^\d+$/.test($("input[name='onsetAge']").val())) {
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写正确的发病年龄");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("input[name='familyHistory']").blur(function(){
        if(!$("input[name='familyHistory']").val()){
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写详细家族病史");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("input[name='familyRelation']").blur(function(){
        if(!$("input[name='familyRelation']").val()){
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写与受检者的关系");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
    $("input[name='presentHistory']").blur(function(){
        if(!$("input[name='presentHistory']").val()){
            $(this).parent().css("border","2px solid #f33131");
            tishi("请填写详细现病史");
            return false;
        }else{
            $(this).parent().removeAttr("style");
        }
    });
});