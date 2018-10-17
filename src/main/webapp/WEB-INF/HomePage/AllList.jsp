<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城产品页面</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/list/GoodsList.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/laypage/laypage.js"></script>
</head>
<body>
<%@ include file="head.jsp" %>

<form action="" onsubmit="return false" id="goodsForm"> 
	<input type="hidden" value="0" name="goodsCatalogId" id="goodsCatalogId">
	<input type="hidden" value="1" name="range" id="range">
	<input type="hidden" value="1" name="paixu" id="paixu">
</form>

<div class="section">
    <div class="screen-box">
        <!--分类--> 
        <dl id="catalogDl">
            <dt>分类：</dt>
            <dd>
                <a class="selected" data-id="0"  href="#">全部</a>
                <c:forEach var="list" items="${goodsCaList}">
                	<a href="#" data-id="${list.id}">${list.name}</a>
                </c:forEach>
            </dd>
        </dl>
        <!--/分类-->
        <!--价格-->
        <dl id="range">
            <dt>价格：</dt>
            <dd>
                <a class="selected" href="#" data-id="1">全部</a>
                <a href="#" data-id="2">0-100元</a>
                <a href="#" data-id="3">101-500元</a>
                <a href="#" data-id="4">501-1000元</a>
                <a href="#" data-id="5">1001-2000元</a>
                <a href="#" data-id="6">2000以上</a>
            </dd>
        </dl>
        <!--/价格-->
    </div>

    <div class="sort-box" id="paixu">
        <a class="first selected" href="#" data-id="1">上架时间</a>
        <a href="#" data-id="2">按人气</a>
        <a href="#" data-id="3">价格从高到低</a>
        <a href="#" data-id="4">价格从低到高</a>
    </div>
</div>


<div class="section">
    <ul class="img-list">
        <div id="goodsList">
        
        </div>
    </ul>
    <div id="page"></div>
</div>


<div class="section qitian-main">
    <img src="${ctx}/public/images/qitian.png">
</div>

<div class="footer-copyright">
    <p>软信商城©2013-2017 软信大学版权所有 京ICP备17017089号 京公网安备11000002000006号</p>
</div>

</body>
</html>