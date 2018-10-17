<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ctx}/public/css/adminbase.css">
</head>
<body>

	<div class="session-main">

    <div class="formbody">
<form action="${ctx}/admin/admin_work_product_add" method="post" enctype="multipart/form-data">
        <ul class="forminfo">
            <li><label>商品名 ：</label><input name="goodsName" class="dfinput" 	  type="text"  value="${goods.goodsName}"></li>
            <li><label>商品编号：</label><input name="goodsSn"  class="dfinput"	  type="text"  value="${goods.goodsSn}"></li>
            <li><label>商品照片：</label><img alt="" src="${ctx}/${goods.goodsImg}"></li>
            <li><label>市场价：</label><input name="marketPrice" class="dfinput"  type="text"  value="${goods.marketPrice}"></li>
            <li><label>售价：</label><input name="sellPrice"  class="dfinput"  type="text"  value="${goods.sellPrice}"></li>
            <li><label>库存：</label><input name="goodsNumber" class="dfinput"  type="text"  value="${goods.goodsNumber}"></li>
            
            <li><label>商品分类：</label>
            	<select name="catalogId">
					<c:forEach var="gc" items="${goodsCa}">
					 	<option value="${gc.id}" selected="selected"  ${goods.catalogId eq gc.id ?"selected='selected'":''}>${gc.name}</option>
					</c:forEach> 
				</select>
            </li>
            																							
            <li><label>是否新品：</label><cite><input name="isNew" type="radio" value="1" ${goods.isNew eq 1?"checked='checked'":''} >是&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="isNew" type="radio" value="0" ${goods.isNew eq 0?"checked='checked'":''}>否</cite></li>
            
            <li><label>是否热销：</label><cite><input name="isHot" type="radio" value="1" ${goods.isHot eq 1?"checked='checked'":''}>是
            &nbsp;&nbsp;&nbsp;&nbsp;<input name="isHot" type="radio" value="0"  ${goods.isHot eq 0?"checked='checked'":''}>否</cite></li>
            
            <li><label>是否上架：</label><cite><input name="isOnSale" type="radio" value="1"  ${goods.isOnSale eq 1?"checked='checked'":''}>是
            &nbsp;&nbsp;&nbsp;&nbsp;<input name="isOnSale" type="radio" value="0" ${goods.isOnSale eq 0?"checked='checked'":''}>否</cite></li>
               
            <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存">
            </li>
        </ul>
</form>

    </div>
</div>
	

</body>
</html>