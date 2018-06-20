$(function(){
	// 显示密码/隐藏密码
	var sel = true;
	$(".password var").click(function(){
		if(sel){
			$(this).addClass("wordsee").siblings("input").attr("type","text");
		} else {
			$(this).removeClass("wordsee").siblings("input").attr("type","password");
		}
		sel = !sel;
	})
	// 点击获取验证码
	$(".yanzhengma").click(function(){
		var num = 60;
		$(".yanzhengma").find("span").html(num+"秒");
		console.log(num);
		timer = setInterval(function(){
			num-=1;
			console.log(num);
			$(".yanzhengma").find("span").html(num+"秒");
			if(num <= 0){
				clearInterval(timer);
				$(".yanzhengma").find("span").html("重新获取");
			}
		}, 1000)
	})
})
