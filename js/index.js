var mySwiper = new Swiper ('.swiper-container', {
    direction: 'vertical',
    loop: true,
    initialSlide :3,
    noSwiping : true,
    onInit: function(swiper){ //Swiper2.x的初始化是onFirstInit
		swiperAnimateCache(swiper); //隐藏动画元素 
		swiperAnimate(swiper); //初始化完成开始动画
		}, 
		onSlideChangeEnd: function(swiper){ 
		swiperAnimate(swiper); //每个slide切换结束时也运行当前slide动画
		},
    // 前进后退按钮
    nextButton: '.swiper-button-next',
    // prevButton: '.swiper-button-prev',
    // 滚动条
    scrollbar: '.swiper-scrollbar',
}) 
//点击时外面大块高度变高，具体内容显示
$(".slide-two .ani").tap(function(){
	$(this).animate({
		"height": "15.5rem"
	}).find(".slide-two .ani p").show().siblings(".slide-two .ani span").hide().parent().siblings(".slide-two .ani dt").children().css({
		"width": "79%",
		"height": "8.08rem"
	});
	//其他块变小
	$(this).siblings(".slide-two .ani").animate({
		"height": "8.25rem"
	}).find(".slide-two .ani dd p").hide();
	//其他块图片变小
	$(this).siblings().find(".slide-two .ani img").css({
		"width": "60%",
		"height": "6.08rem"
	}).parent().css({
		"padding-top": "1.2rem"
	}).siblings(".slide-two .ani dd").children(".slide-two .ani span").show().css({
		"width": "10%",
		"height": "1.42rem",
		"margin-top": "2rem",
		"background-size": "contain"
	});
})
$(".slide-three .con").tap(function(){
	// if(timer){
	// 	clearInterval(timer);
	// }
	$(this).animate({
		"height": "18rem"
	}).siblings().animate({
		"height": "6rem"
	}).find(".con dl").show().siblings(".wrap").hide();
	$(this).find(".slide-three .con .info span").hide(500).parent().parent().parent().siblings().find(".slide-three .con .info span").show(500);
})
$(".wraper").hide();
$(".wrap").hide();
//点击开始游戏
$(".con .start").tap(function(){
	$(this).parents(".con dl").hide();
	$(this).parents(".con dl").siblings(".wrap").show();
	$(this).parents(".con dl").siblings(".wraper").show();
})
//将所有的内容块隐藏
$(".slide-four .jsdiv").hide();
$(".slide-four .jqdiv").hide();
$(".slide-four .css3div").hide();
//CSS3小块往左滑动的时候对应内容块显示，其他小块内容隐藏
$(".slide-four .css3").swipeLeft(function(){
	$(this).animate({
		"left": "40%"
	}, 500,function(){
		$(this).animate({
			"left": "70%"
		}, 500)
	}).parent().siblings(".css3div").show(1000).siblings(".divs").hide();
})
//JS小块往右滑动的时候进行对应内容显示，其他小块内容隐藏
$(".slide-four .js").swipeRight(function(){
	$(this).animate({
		"left": "42%"
	}, 500,function(){
		$(this).animate({
			"left": "10%"
		}, 500)
	}).parent().siblings(".jsdiv").show(1000).siblings(".divs").hide();
})
//JQ小块触碰到的时候对页面进行翻页限制
$(".slide-four .jq").on("touchstart",function(){
	$(this).parent().parent().addClass("swiper-no-swiping");
})
//JQ小块滑动的时候对应内容出现，其他小块内容消失
$(".slide-four .jq").swipeDown(function(){
	$(this).animate({
		"top": "6.9rem"
	}, 500,function(){
		$(this).animate({
			"top": "1rem"
		}, 500)
	}).parent().siblings(".jqdiv").show(1000).siblings(".divs").hide();
})
//手指触碰到外面内容的时候又可以继续翻页
$(".slide-four").on("touchend",function(){
	$(this).removeClass("swiper-no-swiping");
})
//开关灯游戏
var timer = null;
var score = 0;
var lBtn = false;
var rBtn = false;
var num = true;

function timers() {
	var date = new Date();
	timer = setInterval(function() {
		var dateEnd = new Date();
		times = parseInt((dateEnd - date)/1000);
		$(".timers em").html(times);
		if(times == 5) {
			clearInterval(timer);
			$(".mask").css({
			"display" : "block"
			})
		}
	}, 1000) 
}
//按钮变色
$(".on").tap(function(event) {
	event.preventDefault();
	if(num) {
		timers();
		num = false;
	}
	if(!lBtn) {
		lBtn = true;
		rBtn = false;
		score += 1;
		$(".score em").html(score);
		$(this).addClass('sel').siblings().removeClass('sel');
		$(this).siblings().parent().siblings(".light").css({
			"background" : "url('../images/light.png')",
			"background-size" : "100% 9rem"
		})
	}
})
$(".off").tap(function(event) {
	event.preventDefault();
	if(!rBtn) {
		rBtn = true;
		lBtn = false;
		score += 1;
		$(".score em").html(score);
		$(this).addClass('sel').siblings().removeClass('sel');
		$(this).siblings().parent().siblings(".light").css({
			"background" : "#000"
		})
	}
})
//单击继续游戏，则分数和时间清0,灯光消失
$(".mask span").tap(function() {
	$(".score em").html(0);
	$(".timers em").html(0);
	score = 0;
	lBtn = false;
	rBtn = false;
	num = true;
	// timers();
	$(this).parent().css({
		"display" : "none"
	});
	$(this).parent().siblings().children(".light").css({
		"background": "#000"
	})
})		
//点击预估2秒游戏
var date = 0;
var dateend = 0;
var arr = [];
var times = 0;
var btns = document.getElementById('btn');
$(".wrap button").on("touchstart", function(event) {
	event.preventDefault();
	date = new Date();
	$(this).css({
		"background": "#00a6a7"
	})
})
$(".wrap button").on("touchend", function(event) {
	event.preventDefault();
	$(this).css({
		"background": "#ff6c09"
	})
	dateend = new Date();
	times = ((dateend - date)/1000).toFixed(3);
	$(".timers em").html(times + "s");
	arr.push(times);
	arr.sort(abs);
	print();
})
//对时间进行排序
function abs(a, b) {
	var x = Math.abs(a - 2);
	var y = Math.abs(b - 2);;
	return x -y;
}
//输出排名
function print() {
	for(var j = 0; j < arr.length; j++) {
		if(arr[j]) {
			$(".rank span").eq(j).html("第" + (j+1) + "名：" + arr[j]);
		}
	}
}