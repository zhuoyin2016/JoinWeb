/************************************导航栏******************/
$(function(){
//	$("#nav ul li").mouseenter(function(){
//		$(this).addClass("current");
//		$(this).children("a").addClass("hover");
//	});
//	$("#nav ul li").mouseleave(function(){
//		$(this).removeClass("current");
//		$(this).children("a").removeClass("hover");
//		$(this).children("a").css("color","#FFFFFF")
//	});
	$(window).scroll(function(){
		var t = $(document).scrollTop()
		if(t>60){
			$(".header").addClass("cur")
		}else{
			$(".header").removeClass("cur")
		}
	});
});
/*******************************侧栏*********************/
$(function(){
	
	$(window).scroll(function(){

		var t = $(document).scrollTop()

		if(t>= 360){

			$(".fix-nav").css('display','inline')

		}else{

			$(".fix-nav").css('display','none')

		}

	});

});	

$(function(){

	$(".close").click(function(){

		$(this).animate({right:'-140px'})

		.siblings(".side").animate({right:'-140px'})

//		.siblings(".zhankai").css('display','inline')

		.siblings(".open").show(500)

	});

	$(".open").click(function(){

		$(this).css('display','none')

		.siblings(".side").animate({right:'0px'})

		.siblings(".close").animate({right:'140px'})

	});

});	
$(function(){
	
		var $navs = $('#nav li a'),
			$sections = $('.section'),
			$window = $(window),
			navLength = $navs.length-1,
			secHigh = parseInt($sections.eq(0).height()/3);
			
//		滚动页面,导航栏自动变换this.addClass('current').siblings().removeClass('current');
		$window.on('scroll',function(){
  			var scrollTop = $window.scrollTop(),
    			len = navLength;
 			for (; len > -1; len--){
    			var that = $sections.eq(len);
   				if(scrollTop >= that.offset().top-secHigh){
					$navs.eq(len).parent().addClass('current').siblings().removeClass('current');
      				$navs.removeClass('hover').eq(len).addClass('hover');
       				break;
   				}
  			}
		});


		$navs.on('click',function(e){
			
  			e.preventDefault();
  			$('html, body').animate({
    			'scrollTop': $($(this).attr('href')).offset().top
  				}, 400);
		});
		
		
		var $banner = $('.banner'),
			$bannerList = $('.banner-list'),
			$dots = $('.dots span'),
			$prev = $('#prev'),
			$next = $('#next');
		var index = 1;
		var bannerLen = $bannerList.children().length-2,
			bannerWidth = $banner.width();
		var interval = 3000;
		var timer;
		
		$bannerList.css('left',-bannerWidth);
		
		function animate(offset){
			var left = parseInt($bannerList.css('left'))+offset;
			if(offset>0){
				offset = '+='+offset;
			}else{
				offset = '-='+Math.abs(offset);
			}
			$bannerList.animate({'left':offset},1000,function(){
				if(left>-(bannerWidth-300)){
					$bannerList.css('left',-bannerWidth*bannerLen);
				}
				if(left<(-bannerWidth*bannerLen)){
					$bannerList.css('left',-bannerWidth);
				}
			});
		}
		
		function showDot(){
			$dots.eq(index-1).addClass('on').siblings().removeClass('on');
		}
		
		function play(){
			timer = setTimeout(function(){
				$next.trigger('click');
				play();
			},interval);
		}
		
		function stop(){
			clearTimeout(timer);
		}
		
		$next.bind('click',function(){
			if($bannerList.is(':animated')){
				return;
			}
			if(index == bannerLen){ index = 1; }
			else{ index += 1; }
			animate(-bannerWidth);
			showDot();
		});
		
		$prev.bind('click',function(){
			if($bannerList.is(':animated')){
				return;
			}
			if(index == 1){ index = bannerLen; }
			else{ index -= 1; }
			animate(bannerWidth);
			showDot();
		});
		
		$dots.each(function(){
			$(this).bind('click',function(){
				if($bannerList.is(':animated')||$(this).attr('class')=='on'){
					return;
				}
				var myIndex = $(this).index()+1;
				var offset = -bannerWidth*(myIndex-index);
				animate(offset);
				index = myIndex;
				showDot();
			});
		});
		
		$banner.hover(stop,play);
		play();
});
