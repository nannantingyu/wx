var baseFontSize = 100;
var baseWidth = 320;
var clientWidth = document.documentElement.clientWidth || window.innerWidth;
var innerWidth = Math.max(Math.min(clientWidth, 480), 320);
var rem = 100;
if (innerWidth > 362 && innerWidth <= 375) {
    rem = Math.floor(innerWidth / baseWidth * baseFontSize * 0.9);
}
if (innerWidth > 375) {
    rem = Math.floor(innerWidth / baseWidth * baseFontSize * 0.84);
}
window.__baseREM = rem;
document.querySelector('html').style.fontSize = rem + 'px';

function stopPropagation(e) {
    if (e.stopPropagation)
        e.stopPropagation();
    else
        e.cancelBubble = true;
}

$(function(){
   /*setTimeout(function() {
       $(".avg").animate({width:'90%'}, "slow");
       $(".mine").animate({width:'50%'}, "slow");
   }, 1000);*/

   $(".question").click(function(e) {
       if($(".hide-info").is(":visible")) {
           $(".hide-info").slideUp();
       }
       else {
           $(".hide-info").slideDown();
       }
       stopPropagation(e);
   });

   $(document).on('click touchstart', function () {
       $(".hide-info").slideUp();
   });

   $("button.wb100").click(function() {
        $("#dialog-" + $(this).data("dialog")).slideDown();
   });

    $(".dialog-close i").click(function() {
        $(".dialog").slideUp();
    });
});