$(function(){
	$(".seeall").click(function(){
		if($(this).siblings("p").hasClass("limit")){
			$(this).html("收起").siblings("p").removeClass("limit");
		} else {
			$(this).html("查看全文").siblings("p").addClass("limit");
		}
	})	
	
	// 查看更多评论
	var lis = $('.limitul li').eq(0).height();
		var lis1 = $('.limitul li').eq(1).height();
		var sum = lis+lis1;
		console.log(sum);
		console.log(lis);
		console.log(lis1);
		var lissel = true;
		$(".limitul").height(sum);
		$(".more-comment").click(function(){
			if(lissel){
				$(".limitul").height("");
				$(".more-comment").html("收起评论");
			} else {
				$(".limitul").height(sum);
				$(".more-comment").html("查看更多评论");
			}
			lissel = !lissel;
		})

	// 点击点赞
	var selectCon = true;
	$(".content-footer i").click(function(){
		if(selectCon){
			$(this).children("b").addClass("selectCon");
			var stronghtml = $(this).children("var").children("strong").text();
			stronghtml = parseInt(stronghtml) + 1;
			$(this).children("var").children("strong").text(stronghtml);
			console.log(stronghtml);
		} else {
			$(this).children("b").removeClass("selectCon");
			var stronghtml = $(this).children("var").children("strong").text();
			stronghtml = parseInt(stronghtml) - 1;
			$(this).children("var").children("strong").text(stronghtml);
			console.log(stronghtml);
		}
		selectCon = !selectCon;
	})
	// 模拟placeholder
	var inputcon = $(".confooter-inp input").val();
	$(".confooter-inp input").focus(function(){
		if(inputcon=""){
			$(".confooter-inp label").show();
		} if(inputcon!="") {
			$(".confooter-inp label").hide();
		}
		console.log(inputcon);
	})
})

// 下拉显示顶部分享收藏按钮
$(document).scroll(function(){
	var scrTop = $(document).scrollTop();
	if(scrTop >= 260){
		$(".content-scroll").show();
	} else {
		$(".content-scroll").hide();
	}
})