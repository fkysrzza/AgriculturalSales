$(function(){
	$("#dologin").click(function(){
		var name = $("#name").val();
		var pwd = $("#pwd").val();
		var hash = "Base "+Base.encode(name+":"+pwd);
		console.log(hash);
		sessionStorage.setItem("HTTP_REQUEST_key",hash);
		webAPI.request({
			apiName:"login",
			data:"",
			type:"post",
			success:function(result , status , xhr){
				if(result.status == true && result.data == "ok"){
					window.location.href="index.html";
				}
			},
			error:function(result , status , xhr){
				
			}
		});
	});
});