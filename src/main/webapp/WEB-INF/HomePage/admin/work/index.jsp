<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${ctx}/public/css/adminbase.css">
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
    </ul>
</div>
<div class="mainindex">
    <div class="welinfo">
        <span><img src="${ctx}/public/images/sun.png" alt="天气"></span>
        <b>${adminUser.username}早上好，欢迎使用信息管理系统</b>(admin@uimaker.com)
    </div>
    <div class="welinfo">
        <span><img src="${ctx}/public/images/time.png" alt="时间"></span>
        <i>您上次登录的时间：<fmt:formatDate value="${adminUser.lastLoginTime}" pattern="yyyy-MM-dd"/> </i>
    </div>

    <div class="formtitle"><span>常用功能</span></div>
    <div class="toolsli">
        <ul class="toollist">
            <li><a href="${ctx}/admin/to_shoporder"><img src="${ctx}/public/images/i06.png"></a><h2>订单</h2></li>
            <li><a href="${ctx}/admin/to_admin"><img src="${ctx}/public/images/i07.png"></a><h2>系统用户</h2></li>
            <li><a href="${ctx}/admin/to_news"><img src="${ctx}/public/images/icon01.png"></a><h2>新闻资讯</h2></li>
        </ul>
    </div>
</div>
</body>
</html>