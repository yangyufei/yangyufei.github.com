$(function(){
	// 性别选择
	$(".psex span").click(function(){
		$(this).addClass("selectboy").parent().siblings().find("span").removeClass("selectboy");
	})

	// 修改头像
	$(".person-pic").click(function(){
		$(".ppic").show();
		$("input[type=button]").click(function(){
			$(".ppic").hide();
		})
	})

	// 生日
	$(function(){
	    $('#beginTime').date();
	    $('#endTime').date({theme:"datetime"});
	});

	// 居住地
	var area1 = new LArea();
	area1.init({
	    'trigger': '#demo1',//触发选择控件的文本框，同时选择完毕后name属性输出到该位置
	    'valueTo':'#value1',//选择完毕后id属性输出到该位置
	    'keys':{id:'id',name:'name'},//绑定数据源相关字段 id对应valueTo的value属性输出 name对应trigger的value属性输出
	    'type':1,//数据源类型
	    'data':LAreaData//数据源
	});
	var area2 = new LArea();
	area2.init({
	    'trigger': '#demo2',
	    'valueTo':'#value2',
	    'keys':{id:'value',name:'text'},
	    'type':2,
	    'data':[provs_data,citys_data,dists_data]
	});
})