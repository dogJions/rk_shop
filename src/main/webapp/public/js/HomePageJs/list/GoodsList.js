/**
 * 
 */
function ajax(){
	var pageNum=$("#pageNum").val()==""||$("#pageNum").val()==undefined?1:$("#pageNum").val();
	var id=$("#goodsCatalogId").val();
	var range=$("#range").val();
	var paixu=$("#paixu").val();
	
	$.ajax({
		url:"goodsList",
		type:"post",
		data:{pageNum:pageNum,id:id,range:range,paixu:paixu},
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
			    	  ajax();
			      }
			    }
			  });
		}
	});  
	
}

$(function(){
	ajax()
	$("#catalogDl a").click(function(){
		$(this).siblings().removeClass("selected");
		$(this).addClass("selected");
		var catalogid=$(this).attr("data-id");
		$("#goodsCatalogId").val(catalogid);
		ajax()
	})
	
	$("#range a").click(function(){
		$(this).siblings().removeClass("selected");
		$(this).addClass("selected");
		var catalogid=$(this).attr("data-id");
		$("#range").val(catalogid);
		ajax()
	})
	
	$("#paixu a").click(function(){
		$(this).siblings().removeClass("selected");
		$(this).addClass("selected");
		var catalogid=$(this).attr("data-id");
		$("#paixu").val(catalogid);
		ajax()
	})
})

