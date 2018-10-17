<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城产品页面</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/productCar/addProduct.js"></script>
</head>
<body>
<%@ include file="head.jsp" %>

<div class="section">
    <div class="wrapper clearfix">
        <div class="wrap-box">
                <div class="goods-box clearfix">
                    <!--商品图片-->
                    <div class="goods-pic">
                        <!--幻灯片-->
                        <div class="pic-box">
                            <div class="pic-preview">
                                <span class="jqzoom">
                                    <img  src="${ctx}/${product.goodsImg}" alt="${product.goodsName}">
                                </span>
                            </div>
                        </div>
                        <!--/幻灯片-->
                    </div>
                    <!--/商品图片-->

                    <!--商品信息-->
                    <div class="goods-spec">
                        <h1>${product.goodsName}</h1>
                        <div class="spec-box">
                            <dl>
                                <dt>货号</dt>
                                <dd id="commodityGoodsNo">${product.goodsSn}</dd>
                            </dl>
                            <dl>
                                <dt>市场价</dt>
                                <dd><s id="commodityMarketPrice">¥${product.marketPrice}</s></dd>
                            </dl>
                            <dl>
                                <dt>销售价</dt>
                                <dd><em class="price" id="commoditySellPrice">¥${product.sellPrice}</em></dd>
                            </dl>
                        </div>
                        
					<form action="${ctx}/car/one_to_buy2" method="post">
                        <div class="spec-box">
                            <dl>
                                <dt>购买数量</dt>
                                <dd>
                                    <div class="stock-box" style="line-height: 30px;">
                                       <strong><input type="number" name="goNum" value=1 min="1" max="100" id="number"> </strong>
                                       <input type="hidden" value="${product.id}" id="id" name="goodsId">
                                    </div>
                                    <span class="stock-txt">
                                        库存<em id="commodityStockNum">${product.goodsNumber}</em>件
                                    </span>
                                </dd>
                            </dl>
                            <dl>
                                <dd>
                                    <div class="btn-buy" id="buyButton">
                                        <button class="buy" type="submit"   >立即购买</button>
                                        <a class="add" onclick="javascript:add(${product.id});">加入购物车</a>
                                    </div>
                                </dd>
                            </dl>
                        </div>
					</form>

                    </div>
                    <!--/商品信息-->
                </div>

        </div>
    </div>

 
       
        
        




</div>



<div class="section qitian-main">
    <img src="${ctx}/public/images/qitian.png">
</div>

<div class="footer-copyright">
    <p>软信商城©2013-2017 软信大学版权所有 京ICP备17017089号 京公网安备11000002000006号</p>
</div>

</body>
</html>