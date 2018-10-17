/**
 * 
 */

function add(id){
	
	$.ajax({
		url:"../car/add",
		type:"post",
		data:{id:id,number:$("#number").val()},
		success:function(result){
			if(result.stats==1){
				alert(result.msg)
				
			}else{
				alert(result.msg)
			}
		}
	});
}


