$(function(){
	//随机数
	function diu_Randomize(b,e){   
		if(!b && b!=0 || !e){return "?";}   
		return Math.floor( ( Math.random() * e ) + b );   
	}
	var s = 50;
	var l = 50;
	var q = 50;
	var z = 50;
	zz_TUBIAO_Y("tb1",{"学生":s,"老师":l,"其他":q,"主任":z},["#FF4040" , "#ABABAB" , "#EEB422","#7FFF00"],true);
	setInterval(function(){
		s += diu_Randomize(-1,10);
		l += diu_Randomize(-2,10);
		q += diu_Randomize(-3,10);
		z += diu_Randomize(-4,10);
		$("#s").text(s);
		$("#l").text(l);
		$("#q").text(q);
		$("#z").text(z);
		
		
		//图表：圆形图
		zz_TUBIAO_Y("tb1",{"学生":s,"老师":l,"其他":q,"主任":z},["#FF4040" , "#ABABAB" , "#EEB422","#7FFF00"],true);
		
		
		
		//图表：柱形图
		//zz_TUBIAO_ZHU("tb2",{"学生":s,"老师":l,"其他":q,"主任":z},["#FF4040" , "#ABABAB" , "#EEB422","#7FFF00"]);
		
	},2000);

	//ajax_method('get','test',null,function(e){
		//console.log(e);
	//});
	
	$.ajax({
             type: "get",
             url:"http://localhost:8080/test",
             beforeSend: function (XMLHttpRequest) {
         		XMLHttpRequest.setRequestHeader("Content-type","text/html;charset=UTF-8");
             },
             success: function (data) {
            	 console.log(data);
             },error:function(error){
                 console.log(error);
             }
         });
});