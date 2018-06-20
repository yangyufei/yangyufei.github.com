$(function(){
	$(".newsay li").each(function(){

		var limitlength = $(this).find(".say-reply.limitheight li").length;
		if(limitlength<=3){
			$(this).find(".version2-seeall").hide();
		} else {
			$(this).find(".version2-seeall").show();
			var limit1 = $(this).find(".say-reply.limitheight li").eq(0).height();
			var limit2 = $(this).find(".say-reply.limitheight li").eq(1).height();
			var limit3 = $(this).find(".say-reply.limitheight li").eq(2).height();
			var limitsum = limit1 + limit2 + limit3;
			$(this).find(".say-reply.limitheight").height(limitsum+5);
			$(this).find(".version2-seeall").click(function(){
				if($(this).hasClass("version2-seeall-click")){
					$(this).removeClass("version2-seeall-click").html("查看全文")
					$(this).siblings("ul").height(limitsum+5);
				} else {
					$(this).addClass("version2-seeall-click").html("收起全文")
					$(this).siblings("ul").height("");
				}
			})
		}
		console.log(limitlength);
	})
	// $(".say-open").click(function(){
	// 	if($(this).siblings(".say-reply").hasClass("limitheight")){
	// 		$(this).siblings(".say-reply").removeClass("limitheight");
	// 		$(this).html("收起评论");
	// 	} else {
	// 		$(this).siblings(".say-reply").addClass("limitheight");
	// 		$(this).html("展开全部评论");
	// 	}
	// })

	// $(".seemore2").click(function(){
	// 	if($(this).siblings("p").hasClass("limitp")){
	// 		$(this).siblings("p").removeClass("limitp").siblings(".seemore2").html("收起");
	// 	} else {
	// 		$(this).siblings("p").addClass("limitp").siblings(".seemore2").html("查看更多");
	// 	}
	// })


	// 模拟placeholder
	$(".confooter-inp input").focus(function(){
			$(".confooter-inp label").hide();
	})

	// 点击@回复
	// 点击评论名字
	$(".comment-con strong").click(function(){
		var replyname = $(this).html();
		$(".confooter-inp label").show();
		$(".confooter-inp strong").html(replyname);
	})
	// 点击头像
	$(".newsay dt").click(function(){
		var replyname2 = $(this).siblings("dd").find("h2").html();
		$(".confooter-inp label").show();
		$(".confooter-inp strong").html(replyname2);
	})
	// 点击名字
	$(".newsay .dd-left").click(function(){
		var replyname3 = $(this).find("h2").html();
		$(".confooter-inp label").show();
		$(".confooter-inp strong").html(replyname3);
	})


	// 话题页
	$(".themedd-right span").click(function(){
		var num = parseInt($(this).siblings("var").html());
		if($(this).hasClass("selectspan")){
			$(this).removeClass("selectspan").siblings("var").html(num-1);
			
		} else {
			$(this).addClass("selectspan").siblings().html(num+1);
		}
	})
})