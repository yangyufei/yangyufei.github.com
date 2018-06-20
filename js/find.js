// $(function(){
// 	var findli1 = $(".hot-center div").eq(0).height();
// 	var findli2 = parseInt($(".hot-center div").eq(0).css("marginBottom"))-4;
// 	var findli = findli1 + findli2;
// 	var findsum = 0;
// 	for(var i = 0; i < 4;i++){
// 		findsum += findli;
// 	}
// 	$(".hot-center").height(findsum);
// 	console.log(findli1);
// 	console.log(findli2);
// 	console.log(findsum);

// 	var findsel = true;
// 	$(".findmore").click(function(){
// 		if(findsel){
// 			$(".hot-center").height("");
// 			$(this).html("收起");
// 		} else {
// 			$(".hot-center").height(findsum);
// 			$(this).html("点击查看更多话题");
// 		}
// 		findsel = !findsel;
// 	})
// })



$(function(){
	$(".hot-center").each(function(){
		var findlinum = $(".hot-center").children("div").length;
		console.log(findlinum);
		if(findlinum<=4){
			$(".findmore").hide();
			$(".hot-center").height("");
		} else {
			$(".findmore").show();
			var findli1 = $(".hot-center div").eq(0).height();
			var findli2 = parseInt($(".hot-center div").eq(0).css("marginBottom"))-4;
			var findli = findli1 + findli2;
			var findsum = 0;
			for(var i = 0; i < 4;i++){
				findsum += findli;
			}
			$(".hot-center").height(findsum);
			console.log(findli1);
			console.log(findli2);
			console.log(findsum);

			var findsel = true;
			$(".findmore").click(function(){
				if(findsel){
					$(".hot-center").height("");
					$(this).html("收起");
				} else {
					$(".hot-center").height(findsum);
					$(this).html("点击查看更多话题");
				}
				findsel = !findsel;
			})
		}
	})
})