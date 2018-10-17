/**
 * 
 */
function ajax(id){
	var pageNum=$("#pageNum").val()=="" || $("#pageNum").val()== undefined?1:$("#pageNum").val();
	aid = id==""|| id==undefined?0:id;
	
	$.ajax({
		url:"../vip/address_list",
		type:"post",
		data:{pageNum:pageNum,id:aid},
		success:function(result){
			$("#addressList").html(result);
			
			
			var page=$("#page").val()=="" || $("#page").val()== undefined?1:$("#page").val();
			laypage({
				cont:'page',
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