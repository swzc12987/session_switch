require(['jquery',
         'global',
         'module/util',
         'module/ajax',
         'bootstrap',
         'requirejs/domready!'], 
function($, global, util){ 
	
	//回车登入系统
	 document.onkeydown=function(event){
         var e = event || window.event || arguments.callee.caller.arguments[0];
                
          if(e && e.keyCode==13){ // enter 键
        	  doLogin($('#signin-form'));
         }
     };
     
	var doLogin = function(form) {
		var $button = $(form).find("[type='button']"), $val = $button.html();
		$.ajax({
			url : $(form).attr('action'),
			type : $(form).attr('method'),
			headers : {
				'x-form-id' : $(form).attr('id')
			},
			crossDomain:true,
			headers: {
		        "Access-Control-Allow-Origin" : "*",
		        "Location" : "http://localhost:8082/"
		    },
			data : JSON.stringify(getPara(form)),
			dataType : 'json',
			contentType : 'application/json;charset=utf-8',
			beforeSend : function(request) {
            },
			success : function(result) {
				if(result.code == "NACK") {
					$("#username, #password").val("");
				}
			},
			beforeSend : function(){
				$button.html("正在登陆...").attr("disabled", true);
			},
			complete : function(XMLHttpRequest,status){ //请求完成后最终执行参数
				$button.html($val).attr("disabled", false);
				$('#captcha-img').attr("src", global.context+ "/web/auth/captcha?r=" + Math.random());
			}
		});	
	}
	
	var getPara = function(form) {
		var dto = {};
    	$(form).find('input,textarea,select').each(function() {
    		if(this.name && this.value) {
	    		dto[this.name] = this.value;
    		}
    	});
    	return dto;
	}
	
	// Add event handler for captcha image click
	$("#captcha-img").click(function() {
	    $(this).attr("src", global.context+ "/web/auth/captcha?r=" + Math.random());
	});

	
	$(".submit").click(function() {
		var username = $("#username").val();
		var password = $("#password").val();
		if(!username || username.length < 2 || username.length > 30) {
			$.pnotify({ text: "用户名长度在[2-30]个字符以内", type: 'error' });
			return false;
		}
		if(!password || password.length < 5 || password.length > 30) {
			$.pnotify({ text: "密码长度在[5-30]个字符以内", type: 'error' });
			return false;
		}
		return doLogin($('#signin-form'));
	});
	

	
});
