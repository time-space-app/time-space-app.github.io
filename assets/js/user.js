/* 사용자 추가 js */
$(function(){
    $('#back-to-top').hide();   // 스크롤 할때만 나오도록 숨김
    $(window).scroll(function() {
         if($(this).scrollTop() > 6) {
             $('#back-to-top').fadeIn();
         } else {
             $('#back-to-top').fadeOut();
         }
    });
    // 마우스 오버 시 화살표 움직임
    $('#back-to-top').hover(    
    function() {
       $(this).animate({"background-position-y":"30px"},200);
    },
    function() {
       $(this).animate({"background-position-y":"40px"},200);
    });
    //클릭시 페이지 상단으로 이동하도록
    $('#back-to-top').click(function() {
       $('body,html').animate({scrollTop:0}, 500);
       return false;
    });
});