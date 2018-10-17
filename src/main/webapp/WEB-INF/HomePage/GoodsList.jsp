<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城产品页面</title>
    <link rel="stylesheet" type="text/css" href="css/common.css">
</head>
<body>
<%@ include file="head.jsp" %>

<div class="section">
    <div class="screen-box">
        <!--分类-->
        <dl>
            <dt>分类：</dt>
            <dd>
                <a class="selected"  href="#">全部</a>
                <a href="#">手机数码</a>
                
            </dd>
        </dl>
        <!--/分类-->
        <!--价格-->
        <dl>
            <dt>价格：</dt>
            <dd>
                <a class="selected" href="#">全部</a>
                <a href="#">0-100元</a>
                <a href="#">101-500元</a>
                <a href="#">501-1000元</a>
                <a href="#">1001-2000元</a>
                <a href="#">2000以上</a>
            </dd>
        </dl>
        <!--/价格-->
    </div>

    <div class="sort-box">
        <a class="first selected" href="#">上架时间</a>
        <a href="#">按人气</a>
        <a href="#">价格从高到低</a>
        <a href="#">价格从低到高</a>
    </div>
</div>


<div class="section">
    <ul class="img-list">
        <!--取得数据-->

        <!--分页页码-->

        <li>
            <a href="#">
                <div class="img-box">

                    <div class="abs-txt">推荐</div>

                    <img src="images/img1.jpg">
                </div>
                <div class="info">
                    <h3>尼康(Nikon)D3300套机（18-55mm f/3.5-5.6G VRII）（黑色）</h3>
                    <p class="price"><b>¥3180.00</b>元</p>
                    <p>
                        <strong>库存 0</strong>
                        <span>市场价：<s>3150.00</s></span>
                    </p>
                </div>
            </a>
        </li>

       
    </ul>
</div>


<div class="section qitian-main">
    <img src="images/qitian.png">
</div>

<div class="footer-copyright">
    <p>软信商城©2013-2017 软信大学版权所有 京ICP备17017089号 京公网安备11000002000006号</p>
</div>

</body>
</html>