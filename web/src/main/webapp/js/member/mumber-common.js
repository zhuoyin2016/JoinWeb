$(function(){
	$(".sublist").hover(function(){
		$(".sublevel1").slideToggle(300);  
			return false;
	});
	var win=$(window);
	var sc=$(document);
	win.scroll(function(){
		if(sc.scrollTop()>=1){
			$(".subNav").addClass("fixedsubnav");
		} 
		else{
			$(".subNav").removeClass("fixedsubnav");	
		}
	});
});
$(function(){
	$(".show ul li").hover(function(){
		$(this).stop()
			.animate({width:'246px'},'slow')
			.siblings().stop()
			.animate({width:'129px'},'slow');
		$(this).find('.tip').stop()
			.animate({height:'70px'},'slow')
			.parent().siblings().find('.tip').stop()
			.animate({height: '100%'},'slow');
		$(this).find('.tip .front').stop().animate({left:'-200%'},'slow')
			.siblings('.after').stop().animate({right: '105px'},'slow')
			.parent().parent().siblings().find('.tip .front').stop().animate({left:'10px'},'slow')
			.siblings('.after').stop().animate({right: '-200%'},'slow')
	},function(){})
});