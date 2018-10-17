<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城购物车</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/common.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/productCar/GoodsList.js"></script>
     <script type="text/javascript" src="${ctx}/public/js/laypage/laypage.js"></script>
</head>
<body>
<%@ include file="../head.jsp" %>

<div class="section">
    <div class="cart-head">
        <h2>我的购物车</h2>
        <div class="cart-setp">
            <ul>
                <li class="first active">
                    <div class="progress">
                        <span>1</span>
                        放进购物车
                    </div>
                </li>
                <li>
                    <div class="progress">
                        <span>2</span>
                        填写订单信息
                    </div>
                </li>
                <li class="last">
                    <div class="progress">
                        <span>3</span>
                        支付/确认订单
                    </div>
                </li>
            </ul>
        </div>
    </div>

</div>


<div class="section">
    <table width="100%" align="center" class="cart-table" border="0" cellspacing="0" cellpadding="8">
        <tbody>
        <tr>
            <th align="left" colspan="2">商品信息</th>
            <th width="84" align="left">单价</th>
            <th width="104" align="center">数量</th>
            <th width="104" align="left">金额(元)</th>
            <th width="54" align="center">操作</th>
        </tr>
        </tbody>
        
        <tbody id="goodsList">
        	
        </tbody>
        
         <tr>
             <td colspan="5" id="page"></td>
         </tr>
         
           <tr>
            <th align="right" colspan="6">
                已选择商品 <b class="red" id="totalQuantity">2</b> 件 &nbsp;&nbsp;&nbsp;
                商品总金额（不含运费）：<span class="red">￥</span><b class="red" id="totalAmount">5198.00</b>元
            </th>
        </tr>
    </table>
</div>

<div class="cart-foot section">
    <div class="right-box">
        <button class="button" onclick="javascript:location.href='${ctx}/out/allList';">继续购物</button>
        <button class="submit" onclick="javascript:window.location.href='${ctx}/car/one_to_buy2_d'">立即结算</button>
    </div>
</div>
</body>
</html>