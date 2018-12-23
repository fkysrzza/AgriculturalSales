if(sessionStorage.getItem("HTTP_REQUEST_key")== undefined || sessionStorage.getItem("HTTP_REQUEST_key") == null || sessionStorage.getItem("HTTP_REQUEST_key") == ''){
	if(window.location.pathname != "/login.html"){
		window.location.href="login.html";
	}
}
var webAPI = new WebAPI();
function WebAPI(arg){
	var url_prefix = "/agr/";
	this.request = function( config ){
		var me = this;
		var successFnc = config.success;
		var errorFnc = config.error;
		if(undefined != config.data && null != config.data && "" != config.data){
			config.data = JSON.stringify(config.data);
		}else{
			config.data = undefined;
		}
		config.contentType = "application/json";
		config.url = url_prefix + config.apiName;
		var auth = sessionStorage.getItem("HTTP_REQUEST_key");
		//用于登录
		if(undefined != auth && null != auth && "" != auth){
			config.beforeSend= function(req){
				req.setRequestHeader("Authorization",auth);
			}
		}else{
			window.location.href="login.html";
			return;
		}
		config.success = function(result , status , xhr){
			successFnc(result , status , xhr);
		};
		config.error = function(result , status , xhr){
			errorFnc(result , status , xhr);
		};
		var httpObj = $.ajax(config);
	}
}