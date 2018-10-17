/**
 * 
 */
function order(){
	$.ajax({
		url:"../vip/order",
		type:"post",
		data:{},
		success:function(result){
			$("#right").html(result)
		}
	})
}

function address(){
	$.ajax({
		url:"../vip/address",
		type:"post",
		data:{},
		success:function(result){
			$("#right").html(result)
		}
	})
}

function editadr(id){
	$.ajax({
		url:"../vip/edit_adr",
		type:"post",
		data:{id:id},
		success:function(result){
			$("#right").html(result)
		}
	})
}

function recharge(){
	$.ajax({
		url:"../vip/to_recharge",
		type:"post",
		data:{},
		success:function(result){
			$("#right").html(result)
		}
	})
}

function rr(){
	$.ajax({
		url:"../vip/to_rr",
		type:"post",
		data:{},
		success:function(result){
			$("#right").html(result)
		}
	})
}

function updatepsw(){
	$.ajax({
		url:"../vip/to_update_psw",
		type:"post",
		data:{},
		success:function(result){
			$("#right").html(result)
		}
	})
}

function updateUser(){
	$.ajax({
		url:"../vip/to_update_user",
		type:"post",
		data:{},
		success:function(result){
			$("#right").html(result)
		}
	})
}