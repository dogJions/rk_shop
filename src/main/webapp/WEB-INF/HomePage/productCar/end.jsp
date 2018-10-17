<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>支付成功</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
</head>
<body>

<%@include file="../head.jsp" %>

<div class="section">
    <div class="nav-tit">
        <a class="selected" href="javascript:;">支付中心</a>
    </div>

    <div class="msg-tips">
        <div class="icon">

        </div>
        <div class="info">
            <strong>订单已支付成功！</strong>
            <p>您可以点击这里进入<a href="${ctx}/vip/home">会员中心</a>查看订单状态！</p>
            <p>如有其它问题，请立即与我们客服人员联系。</p>
        </div>
    </div>

</div>

</body>
</html>