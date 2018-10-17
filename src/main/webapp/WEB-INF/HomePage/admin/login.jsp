<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
   <link rel="stylesheet" href="${ctx}/public/css/adminlogin.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/admin/login.js"></script>
</head>
<body>

   <div class="login-main">
        <div class="login-header">
            登录
        </div>
        <div class="item-box">
            <img src="${ctx}/public/images/login-user.png" class="img">
           <input type="text" name="username"  id="username" placeholder="用户名">
        </div>
       <div class="item-box">
           <img src="${ctx}/public/images/login-pass.png" class="img">
           <input type="text" name="password" id="password" placeholder="密码">
       </div>
       <div class="item-code-box">
           <div class="item-box1">
               <img src="${ctx}/public/images/login-pass.png" class="img">
               <input type="text" name="code" id="code" placeholder="验证码">
           </div>
           <img src="${ctx}/adminLogin/YZM" class="code" id="imgcode" onclick="refCode()" title="点击我重新获取">
           
           <!--   <img src="../images/img1.jpg" class="code" id="imgcode" onclick="refCode()" title="点击我重新获取"> -->
       </div>
       <div class="item-box" style="border: 0px;margin-top: 15px;">
            <input  type="button" onclick="loginAjax()" value="登录" class="btn" style="border: 0px;"/>
        </div>
       <div class="item-box" style="border: 0px;margin-top: 15px;">
           <a href="${ctx}/out/homePage" class="btn" style="background: #2aef6c;">返回首页</a>
       </div>
   </div>
</body>
</html>