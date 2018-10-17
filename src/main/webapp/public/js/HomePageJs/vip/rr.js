/**
 * 
 */
function ajax(){
	var pageNum=$("#pageNum").val()=="" || $("#pageNum").val()== undefined?1:$("#pageNum").val();
	
	
	$.ajax({
		url:"../vip/to_r_r_list",
		type:"post",
		data:{pageNum:pageNum},
		success:function(result){
			$("#RRList").html(result);
			
			var page=$("#page").val()=="" || $("#page").val()== undefined?1:$("#page").val();
			laypage({
				cont:'page',
				pages:page,
				curr:pageNum,
				jump: function(obj, first){
				      if(!first){
				    	  $("#pageNum").val(obj.curr);
				    	  ajax();
				      }
				    }
			})
		}
	});
}


$(function(){
	ajax();
})