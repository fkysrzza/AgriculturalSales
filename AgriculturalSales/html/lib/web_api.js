var webAPI = new WebAPI();
function WebAPI(arg){
	var url_prefix = "/iknow/";
	this.request = function( config ){
		var me = this;
		var successFnc = config.success;
		var errorFnc = config.error;
		if(undefined != config.data && null != config.data && "" != config.data){
			config.data = JSON.stringify(config.data);
		}else{
			config.data = undefined;
		}
		console.log(config.data);
		config.contentType = "application/json";
		config.url = url_prefix + config.apiName;
		
		//用于登录
		// if(undefined != auth && null != auth && "" != auth){
			// config.beforeSend= function(req){
				// req.setRequestHeader("Authorization",auth);
			// }
		// }
		config.success = function(result , status , xhr){
			successFnc(result , status , xhr);
			
			
			
			
			
			// var rslt = undefined;
			// if(undefined != result && null != result && "" != result){
				// rslt = JSON.parse(result);
				// if(rslt.result){
					// if(!rslt.data){
						// rslt.data = "{}";
					// }
					// successFnc(rslt , status , xhr);
				// }else{
					// errorFnc(rslt , status , xhr);
				// }
			// }else{
				// errorFnc({result:false,errorCode:"",errorMessage:""} , status , xhr);
			// }
		};
		config.error = function(result , status , xhr){
			errorFnc(result , status , xhr);
		};
		var httpObj = $.ajax(config);
	}
}