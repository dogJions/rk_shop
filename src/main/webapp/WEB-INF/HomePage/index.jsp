<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城首页</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/public/js/swiper/swiper.min.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/swiper/swiper.jquery.min.js"></script>
    <script>
      $(function(){
          var swiper = new Swiper('.swiper-container', {
              paginationClickable: true,
              speed: 3000,
              loop: true,
              observer:true,
              observeParents:true,
              autoplayDisableOnInteraction : false,
              autoplay:10000
          });
      });
    </script>

</head>
<body>
<%@include file="head.jsp" %>


<div class="swiper-container section ad-img">
    <div class="swiper-wrapper" >

		<c:forEach var="shopAd" items="${shopAd}">
        <div class="swiper-slide">
            <a href="http://www.baidu.com" target="_blank"> <img src="${ctx}/${shopAd.adImg}"></a>
        </div>
		</c:forEach>
        
    </div>
</div>


	<div class="section new-goods-main">
		<div class="new-goods-header">
			新品产品 <a class="more-goods f-right" href="#">更多+</a>
		</div>
		<ul class="img-list">
			<c:forEach var="newa" items="${NewInfo.list}">
				<li><a title="${newa.goodsName}" href="productDetail.html">
						<div class="img-box">
							<a href="${ctx}/out/product?id=${newa.id}"><img src="${ctx}/${newa.goodsImg}"></a>
						</div>
						<div class="info">
							<a href="${ctx}/out/product?id=${newa.id}"><h3>${newa.goodsName}</h3></a>
							<p>
								<strong>${newa.clickCount}</strong> <span class="price">${newa.sellPrice}</span>
							</p>
						</div>
				</a></li>
			</c:forEach>
		</ul>
	</div>

	<div class="section new-goods-main">
		<div class="new-goods-header">
			热销产品 <a class="more-goods f-right" href="#">更多+</a>
		</div>
		<ul class="img-list">
			<c:forEach var="hot" items="${HotInfo.list}">
				<li><a title="${hot.goodsName}" href="productDetail.html">
						<div class="img-box">
							<a href="${ctx}/out/product?id=${hot.id}"><img src="${ctx}/${hot.goodsImg}"></a>
						</div>
						<div class="info">
							<a href="${ctx}/out/product?id=${hot.id}"><h3>${hot.goodsName}</h3></a>
							<p>
								<strong>${hot.clickCount}</strong> <span class="price">${hot.sellPrice}</span>
							</p>
						</div>
				</a></li>
			</c:forEach>
		</ul>
	</div>




<div class="section qitian-main">
    <img src="${ctx}/public/images/qitian.png">
</div>

<div class="footer-copyright">
    <p>软信商城©2013-2017 软信大学版权所有 京ICP备17017089号 京公网安备11000002000006号</p>
</div>
</body>
</html>