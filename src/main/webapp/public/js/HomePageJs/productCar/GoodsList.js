/**
 * 
 */
function ajax(id){
	var pageNum=$("#pageNum").val()==""||$("#pageNum").val()==undefined?1:$("#pageNum").val();
	var uid=id==""||id==undefined?0:id;
	
	if(uid>0){
		if(confirm("确认删除？")){
			
		}else{
			uid=0;
		}
	}
	
	
	$.ajax({
		url:"../car/carlist",
		type:"post",
		data:{pageNum:pageNum,id:uid},
		success:function(result){
			$("#goodsList").html(result);
			
			var pages=$("#pages").val()==""||$("#pages").val()==undefined?1:$("#pages").val();
			console.info(pages);
			
			laypage({
			    cont: 'page' //绑定到指定id
			    ,pages: pages
			    ,curr:pageNum
			    ,jump: function(obj, first){
			      if(!first){
			    	  $("#pageNum").val(obj.curr);
			    	  ajax(0);
			      }
			    }
			  });
		}
	});  
	
}

$(function(){
	ajax(0)
	
})

