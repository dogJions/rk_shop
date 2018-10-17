/**
 * 
 */
function ajax(id){
	var pageNum=$("#pageNum").val()=="" || $("#pageNum").val()== undefined?1:$("#pageNum").val();
	var uid=id==""||id==undefined?0:id;
	
	if(uid>0){
		if(confirm("确认删除？")){
			
		}else{
			uid=0;
		}
	}
	
	
	$.ajax({
		url:"../vip/order_list",
		type:"post",
		data:{pageNum:pageNum,id:uid},
		success:function(result){
			$("#orderList").html(result);
			
			var page=$("#page").val()=="" || $("#page").val()== undefined?1:$("#page").val();
			laypage({
				cont:'pages',
				pages:page,
				curr:pageNum,
				jump: function(obj, first){
				      if(!first){
				    	  $("#pageNum").val(obj.curr);
				    	  ajax(0);
				      }
				    }
			})
		}
	});
}


$(function(){
	ajax(0);
})