$(function(){
	$(".text,.img").css({"display":'none'})//首先给text，img设置display：none将其隐藏
	var win=$(window);
	var sc=$(document);
	win.scroll(function(){//滚动和淡入淡出函数
		if ((sc.scrollTop()>=50)&&(sc.scrollTop()<=350)){//当滚动条位置在50-350之间时
			$(".text-one,.img-one").fadeIn(1500);//第一个项目介绍的内容1.5s淡入
		}
		else{
			$(".text-one,.img-one").fadeOut(1500);//不在50-350范围内则淡出
		}
	});
});
$(function(){
	$(".text,.img").css({"display":'none'})//首先给text，img设置display：none将其隐藏
	var win=$(window);
	var sc=$(document);
	win.scroll(function(){//滚动和淡入淡出函数
		if ((sc.scrollTop()>=400)&&(sc.scrollTop()<=750)){//当滚动条位置在400-750之间时
			$(".text-two,.img-two").fadeIn(1500);//第一个项目介绍的内容1.5s淡入
		}
		else{
			$(".text-two,.img-two").fadeOut(1500);//不在400-750范围内则淡出
		}
	});
});
$(function(){
	$(".text,.img").css({"display":'none'})//首先给text，img设置display：none将其隐藏
	var win=$(window);
	var sc=$(document);
	win.scroll(function(){//滚动和淡入淡出函数
		if ((sc.scrollTop()>=800)&&(sc.scrollTop()<=1250)){//当滚动条位置在800-1250之间时
			$(".text-three,.img-three").fadeIn(1500);//第一个项目介绍的内容1.5s淡入
		}
		else{
			$(".text-three,.img-three").fadeOut(1500);//不在800-1250范围内则淡出
		}
	});
});