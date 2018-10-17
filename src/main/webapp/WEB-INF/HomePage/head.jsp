<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="top-header">
    <div class="section">
        <div class="top-header-left f-left">
            <a href="#">LOGO</a>
        </div>
        <div class="top-header-right f-right">
        <c:if test="${user eq null}">
            <a href="${ctx}/out/tologin">登录</a>
            <a href="${ctx}/out/toadd">注册</a>
        </c:if>
        
         <c:if test="${!(user eq null)}">
         	${user.username}
         	<a href="${ctx}/out/tologinout">退出</a>
         </c:if>
         
            <a href="${ctx}/adminLogin/to_admin_login">后台</a>
        </div>
    </div>
</div>

<div class="section nav-header">
    <ul class="nav-menus f-left">
    	
        <li><a href="${ctx}/out/homePage" ${isActive eq 0 ?'class="active"':''}>首页</a></li>
        <li><a href="${ctx}/out/allList" ${isActive eq 1 ?'class="active"':''}>产品列表</a></li>
        <li><a href="${ctx}/car/tocar" ${isActive eq 2 ?'class="active"':''}>购物车</a></li>
        <li><a href="${ctx}/vip/home" ${isActive eq 3 ?'class="active"':''}>会员中心</a></li>
        <li><a href="${ctx}/out/to_news_list" ${isActive eq 4 ?'class="active"':''}>新闻资讯</a></li>
        <li><a href="${ctx}/out/callwe" ${isActive eq 5 ?'class="active"':''}>联系我们</a></li>
    </ul>
    <!-- <div class="f-right nav-right">
        <input type="text" class="seacher-input f-left" placeholder="输入关键字">
        <a class="seacher-but  f-left" >搜索</a>
    </div> -->
</div>