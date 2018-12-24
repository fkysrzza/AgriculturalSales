$(function(){
	$("iframe").css("min-height",($(document).height()-60)+"px")
	$(".t-ul").click(function(){
		var son = $(this).data("son-id");
		if($("#"+son).is(':visible')){
			$("#"+son).hide();
			$(this).removeClass("ul-c");
		}else{
			$("#"+son).show();
			$(this).addClass("ul-c");
		}
	});
	$(".lie").click(function(){
		if($(".body").is(".body-show")){
			$(".body").removeClass("body-show")
			$(".nav").removeClass("nav-show");
		}else{
			$(".body").addClass("body-show")
			$(".nav").addClass("nav-show");
		}
	});
	$(".t2-btn").click(function(){
		if($(this).is(".ts")){
			
		}else{
			$(".ts").removeClass("ts")
			$(".li-c").removeClass("li-c");
			$(this).addClass("ts");
		}
	});
	$(".t-li").click(function(){
		if($(this).is(".li-c")){
			
		}else{
			$(".li-c").removeClass("li-c");
			$(".ts").removeClass("ts")
			$(this).addClass("li-c");
		}
	});
	$("#showye").click(function(){
		$(".ts").removeClass("ts")
		$(".li-c").removeClass("li-c");
		$("iframe").attr("src","./shouye.html");
	});
	$(".go-btn").click(function(){
		var src = $(this).attr("id");
		$("iframe").attr("src" , "./" + src + ".html");
	});
	
});