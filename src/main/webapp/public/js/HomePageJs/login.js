/**
 * 
 */
function loginAjax(){
	$.ajax({
		url:"login",
		type:"post",
		data:{username:$("#username").val(),password:$("#password").val()},
		success:function(result){
			if(result.stats==1){
				window,location.href="homePage"
			}else{
				alert(result.msg)
			}
		}
	});
	
}