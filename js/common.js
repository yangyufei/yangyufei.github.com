$(function(){
	$(window).resize(infinite);
	function infinite() {
		var htmlWidth = $('html').width();
		if (htmlWidth >= 640) {
			$("html").css({
				"font-size" : "24px"
			});
		} else {
			$("html").css({
				"font-size" :  24 / 640 * htmlWidth + "px"
			});
		}
	}infinite();

	// 按钮触碰变色
	$(".new-wrap input[type=submit]").on("touchstart",function(){
		$(this).addClass("buttonselect");
	})
	$(".new-wrap input[type=submit]").on("touchend",function(){
		$(this).removeClass("buttonselect");
	})
});
// 底部导航
function webReady(index){
	$(document).ready(function(){
		$(".footer li a").eq(index).children().addClass("yellow");
	})	
}