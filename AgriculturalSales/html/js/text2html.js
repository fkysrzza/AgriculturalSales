$(function(){
	var editor =undefined;
	KindEditor.ready(function(K) {
			editor = K.create('#editor_id');
			var options = {
					cssPath : '/css/index.css',
					filterMode : true
			};
			
	});
	$("#save").click(function(){
		//editor.sync();
		var html = editor.html();
		console.log(html);
		$("#show").html(html);
		$('#input').hide();
		$("#show").show();
		webAPI.request({
			apiName:"upload/html",
			data:{name:"上传实例",data:html,ver:"zz"},
			type:"post",
			success:function(result , status , xhr){
				console.log("ok");
				console.log(result);
			},
			error:function(result , status , xhr){
				console.log("err");
				console.log(result);
			}
		});
	});
})