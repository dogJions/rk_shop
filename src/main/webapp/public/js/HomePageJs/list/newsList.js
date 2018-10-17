/**
 * 
 */

function ajax(id){
	var pageNum=$("#pageNum").val()=="" || $("#pageNum").val()== undefined?1:$("#pageNum").val();
	var uid=id==""||id==undefined?0:id;
	
	$.ajax({
		url:"../out/news_list",
		type:"post",
		data:{pageNum:pageNum,id:uid},
		success:function(result){
			$("#list").html(result);
			
			
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

function right(id){
	
	$.ajax({
		url:"../out/to_news",
		type:"post",
		data:{id:id},
		success:function(result){
			$("#right").html(result)
		}
	})
}