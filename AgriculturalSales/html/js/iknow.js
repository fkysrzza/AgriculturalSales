$(function(){
	
	window.onload=function(){
		 changeDivHeight();
	}
	//当浏览器窗口大小改变时，设置显示内容的高度
	window.onresize=function(){
		 changeDivHeight();
	}
	function changeDivHeight(){

		$(".body").css("min-height" , (Number($(window).height()) - 40) + "px");
		$(".nav").css("min-height" , (Number($(window).height()) - 40) + "px");
		$(".main").css("min-height" , (Number($(window).height()) - 40) + "px");
	}
});