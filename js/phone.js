$(function(){
	var timer = null;
	// 未输入手机号时提示
	$(".yanzhengma").click(function(){
		var telvalue = $("#tel").val();
		if(telvalue==""){
			alert("请输入手机号码");
		}
	})
	// 手机号正确则获取验证码，不正确时提示
	$("#tel").on("blur",function(){
		var tel = $(this).val();
		var reg = /^1\d{10}$/gi;
		if(reg.test(tel)) {
		    $(this).css({
		         "color": "black"
		    })
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
		} else {
		    $(this).css({
		         "color": "red"
		    })
		    alert("请输入正确的电话号码");
		}
	})
})