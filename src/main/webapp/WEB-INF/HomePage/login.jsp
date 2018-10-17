<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城首页</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/login.js"></script>
</head>
<body>
<%@ include file="head.jsp" %>


<div class="section">
    <div class="nav-tit">
        <a class="selected" href="javascript:;">账户登录</a>
        <i>|</i>
        <a href="${ctx}/out/toadd">免费注册</a>
    </div>

    <form id="loginform" name="loginform" class="login-box"  onsubmit="return false;" >
        <div class="input-box">
            <input id="username" name="username" type="text" placeholder="用户名/手机/邮箱" maxlength="50">
        </div>
        <div class="input-box">
            <input id="password" name="password" type="password" placeholder="输入登录密码" maxlength="16">
        </div>
        <div class="btn-box">
            <input onclick="loginAjax()"  type="button" value="立即登录">
        </div>
    </form>
</div>


<div class="section qitian-main">
    <img src="${ctx}/public/images/qitian.png">
</div>

<div class="footer-copyright">
    <p>软信商城©2013-2017 软信大学版权所有 京ICP备17017089号 京公网安备11000002000006号</p>
</div>
</body>
</html>