/**
 * 
 */
function addAjax(){
	$.ajax({
		url:"../out/add",
		type:"post",
		data:$("#regform").serializeArray(),
		success:function(result){
			if(result.stats==1){
				window,location.href="../out/tologin"
			}else{
				alert(result.msg)
			}
		}
	});
	
	return false;
	
}


//var myForm =$("#regform").submit(function(){
//	console.info(1);
//    $ajax({    
//          url: '../out/add',
//          type: 'post',//提交的方式
//          dataType:'json',
//          data: myForm.serializeArray(),
//          cache : false,
//          success: function(result) {
//        	  
//        	  if(result.stats==1){
//  				window,location.href="login"
//  			}else{
//  				alert(result.msg)
//  			}
//          }
//     
//});
//});
