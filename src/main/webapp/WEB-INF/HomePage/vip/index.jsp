<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>会员中心</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/vip/index.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/laypage/laypage.js"></script>

</head>
<body>
<%@ include file="../head.jsp" %>

<%@ include file="left.jsp" %>

<div id="right">
	    <div class="right-auto">
	        <div class="bg-wrap" style="min-height:765px;">
	
	
	            <!--会员中心-->
	            <div class="sub-tit">
	                <a class="add" href="javascript:history.go(-1);"><i class="iconfont icon-reply"></i>返回</a>
	                <ul>
	                    <li class="selected">
	                        <a href="javascript:;">个人中心</a>
	                    </li>
	                </ul>
	            </div>
	
	            <div class="center-head clearfix">
	                <div class="img-box">
	
	                    <img src="${ctx}/${user.userImg}">
	
	                </div>
	                <div class="list-box">
	                    <h3>欢迎您${user.id}</h3>
	                    <ul>
	                        <li>组别：注册会员</li>
	                        <li>账户余额：￥${user.rechargeMoney}</li>
	                    </ul>
	                </div>
	            </div>
	            <div class="center-info clearfix">
	                <ul>
	                    <li>本次登录IP：${user.lastIp}</li>
	                    <li>上次登录IP：${user.lastIp}</li>
	                    <li>注册时间：<fmt:formatDate value="${user.addTime}"/></li>
	                    <li>上次登录时间：<fmt:formatDate value="${lastDateTime}"/> </li>
	                </ul>
	            </div>
	
	            <div class="center-tit">
	                <span><a href="/user/order-list.html">更多..</a></span>
	                <h3><i class="iconfont icon-order"></i>我的订单</h3>
	            </div>
	            <div class="center-info clearfix">
	                <ul>
	                    <li>已完成订单：0个</li>
	                    <li>待完成订单：1个</li>
	                </ul>
	            </div>
	            <!--会员中心-->
	        </div>
	    </div>
	    
</div>

</body>
</html>