<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城首页</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
     <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/list/newsList.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/laypage/laypage.js"></script>
</head>
<body>

<%@ include file="head.jsp" %>

<div class="section clearfix"  style="margin-top: 10px;">
    <!--/页面右边-->
    <div class="right-260">
        <div class="bg-wrap nobg">
            <div class="sidebar-box">
                <h4>资讯类别</h4>
                <ul class="navbar">
					<c:forEach var="m" items="${news}">
						 <li>
                        	<h5><a href="javascript:ajax(${m.id});">${m.name}</a></h5>
                    	</li>
							
					</c:forEach>
                   

                </ul>
            </div>



        </div>
    </div>
    <!--/页面右边-->

    <!--页面左边-->
    <div class="left-auto" id="right">
        <div class="bg-wrap" id="list">
            
        </div>
         	<!--页码列表-->
	            <div  id="pages">
	            </div>
            <!--/页码列表-->
    </div>
    		
    <!--/页面左边-->
</div>



<div class="footer-copyright">
    <p>软信商城©2013-2017 软信大学版权所有 京ICP备17017089号 京公网安备11000002000006号</p>
</div>
</body>
</html>