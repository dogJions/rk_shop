/**
 * 
 */
function updateAjax(){
	$.ajax({
		url:"../vip/update_psw",
		type:"post",
		data:{oldPassword:$("#txtOldPassword").val(),txtPassword:$("#txtPassword").val()},
		success:function(result){
			if(result.stats==1){
				window,location.href="../vip/home"
			}else{
				alert(result.msg)
			}
		}
	});
	
}