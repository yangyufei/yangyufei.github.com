$(function(){
	// 轮播
	var mySwiper = new Swiper ('.swiper-container', {
	    loop: true,
	    autoplay: 5000,
	    // 如果需要分页器
	    pagination: '.swiper-pagination',
	}) 
	// 点赞
	$(".zan").click(function(){
		if($(this).children("span").hasClass("love2")){
			$(this).children("span").removeClass("love2").siblings("var").removeClass("yellow").html("赞");
		} else {
			$(this).children("span").addClass("love2").siblings("var").addClass("yellow").html("已赞");
		}
	})
	// 收藏
	$(".collection").click(function(){
		if($(this).hasClass("yellow")){
			$(this).removeClass("yellow").html("收藏");
		} else {
			$(this).addClass("yellow").html("已收藏");
		}
	})
})
// 顶部滚动条滚动
$(window).scroll(function(){
	var t = $("body").scrollTop();
	console.log(t);	
	if(t > 32){
		$(".index-top").addClass("fixed");
	}
	if(t <= 32){
		$(".index-top").removeClass("fixed");
	}
})