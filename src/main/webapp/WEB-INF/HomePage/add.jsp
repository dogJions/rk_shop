<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城首页</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
     <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/add.js"></script>
    
</head>
<body>
<%@ include file="head.jsp" %>


<div class="section">
    <div class="nav-tit">
        <a class="selected" href="${ctx}/out/toadd">会员注册</a>
        <i>|</i>
        <a href="${ctx}/out/tologin">账户登录</a>
    </div>

    <form id="regform" name="regform" onsubmit="return addAjax()"  method="post">
        <div class="form-box full">
            <dl class="form-group">
                <dt>用 户 名：</dt>
                <dd>
                    <input id="txtUserName" name="username" type="text" class="input" placeholder="输入登录用户名" >
                    <span class="Validform_checktip">请输入登录的用户名</span>
                </dd>
            </dl>
            <dl class="form-group">
                <dt>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</dt>
                <dd>
                    <input id="txtPassword" name="password" type="password" class="input" placeholder="输入登录密码" >
                    <span class="Validform_checktip">请输入6-20位的登录密码</span>
                </dd>
            </dl>
            <dl class="form-group">
                <dt>确认密码：</dt>
                <dd>
                    <input id="txtPassword1" name="yesPassword" type="password" class="input" placeholder="请再次输入密码" >
                    <span class="Validform_checktip">请再次输入登录密码</span>
                </dd>
            </dl>

            <!--开放注册及手机注册-->
            <dl class="form-group">
                <dt>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>
                <dd>
                    <input id="txtMobile" name="phone" type="text" class="input" placeholder="输入手机号码" >
                    <span class="Validform_checktip">请输入手机号码</span>
                </dd>
            </dl>
            <!--/开放注册及手机注册-->

            <!--开放注册及邮箱邀请注册-->
            <dl class="form-group">
                <dt>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</dt>
                <dd>
                    <input id="txtEmail" name="email" type="text" class="input" placeholder="输入邮箱账号" >
                    <span class="Validform_checktip">请输入电子邮箱账号</span>
                </dd>
            </dl>
            <!--/开放注册及邮箱邀请注册-->

            <!--开放注册-->
            <dl class="form-group">
                <dt>验 证 码：</dt>
                <dd>
                    <input id="txtCode" name="code" type="text" class="input code" placeholder="输入验证码" >
                    <a class="send" href="javascript:;">
                        <img src="${ctx}/adminLogin/YZM" width="80" height="22">
                    </a>
                    <span class="Validform_checktip"></span></dd>
            </dl>
            <!--/开放注册-->




            <dl class="form-group">
                <dd>

                    <input  type="submit" value="立即注册" class="submit" >

                </dd>
            </dl>
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