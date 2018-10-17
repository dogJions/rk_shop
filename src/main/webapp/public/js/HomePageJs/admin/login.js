/**
 * 
 */
function loginAjax(){
	
	var username=document.getElementById("username");
    var password=document.getElementById("password");
//    var code=document.getElementById("code");
    
    if(username.value==""){
        alert("请输入用户名");
        username.focus();
        return false;
    }

    if(password.value==""){
        alert("请输入密码");
        password.focus();
        return false;
    }
    
    if(code.value==""){
        alert("请输入验证码");
        code.focus();
         return false;
     }
	
   
	$.ajax({
		url:"../adminLogin/admin_login",
		type:"post",
		data:{username:$("#username").val(),password:$("#password").val(),code:$("#code").val()},
		success:function(result){
			if(result.stats==1){
				window,location.href="../admin/to_admin_index"
			}else{
				refCode()
				alert(result.msg)
			}
		}
	});
	
}

//表单验证
    

  


获取验证码
 function refCode(){
     var date=new Date();
     var imgcode=document.getElementById("imgcode");
    imgcode.src="../adminLogin/YZM?s="+date.getTime();
  }