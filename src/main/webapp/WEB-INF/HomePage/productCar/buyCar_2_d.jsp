<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>商城首页</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/public/css/common.css">
<script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/public/js/HomePageJs/productCar/buyCar_2_d.js"></script>

</head>
<body>

	<%@include file="../head.jsp"%>

	<div class="section">
		<div class="cart-head">
			<h2>我的购物车</h2>
			<div class="cart-setp">
				<ul>
					<li class="first active">
						<div class="progress">
							<span>1</span> 放进购物车
						</div>
					</li>
					<li class="active">
						<div class="progress ">
							<span>2</span> 填写订单信息
						</div>
					</li>
					<li class="last">
						<div class="progress">
							<span>3</span> 支付/确认订单
						</div>
					</li>
				</ul>
			</div>
		</div>

	</div>

	<div class="section">
		<div class="cart-box">
			<h2 class="slide-tit">
				<span>1、收货地址</span>
			</h2>
		</div>
		<form action="${ctx}/car/add_shop_og_d" method="post">
			<div class="form-box address-info">
				<dl class="form-group">
					<dt>收件人姓名：</dt>
					<dd>
						<input name="userName" value="${address.userName}"
							id="txtAcceptName" type="text" class="input" datatype="s1-50"
							nullmsg="请填写收件人用户名" sucmsg=" "> <span
							class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dt>所属地区：</dt>
					<dd>
						<input name="province" value="${address.province}" id="txtAddress"
							type="text" class="input" maxlength="255" datatype="*0-255"
							nullmsg="请填写详细地址" sucmsg=" "> <span
							class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dt>市：</dt>
					<dd>
						<input name="city" value="${address.city}" id="txtAddress"
							type="text" class="input" maxlength="255" datatype="*0-255"
							nullmsg="请填写详细地址" sucmsg=" "> <span
							class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dt>县：</dt>
					<dd>
						<input name="area" value="${address.area}" id="txtAddress"
							type="text" class="input" maxlength="255" datatype="*0-255"
							nullmsg="请填写详细地址" sucmsg=" "> <span
							class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dt>详细地址：</dt>
					<dd>
						<input name="address" value="${address.address}" id="txtAddress"
							type="text" class="input" maxlength="255" datatype="*0-255"
							nullmsg="请填写详细地址" sucmsg=" "> <span
							class="Validform_checktip"></span>
					</dd>
				</dl>

				<dl class="form-group">
					<dt>联系电话：</dt>
					<dd>
						<input name="phone" value="${address.phone}" id="txtTelphone"
							type="text" class="input" maxlength="30" datatype="*0-20"
							sucmsg=" "> <span class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dt>电子邮箱：</dt>
					<dd>
						<input name="email" value="${address.email}" id="txtEmail"
							type="text" class="input" maxlength="30" datatype="*0-30"
							sucmsg=" "> <span class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dt>邮政编码：</dt>
					<dd>
						<input name="code" value="${address.code}" id="txtPostCode"
							type="text" class="input" maxlength="30" datatype="n0-10"
							sucmsg=" "> <span class="Validform_checktip"></span>
					</dd>
				</dl>
			</div>

			<h2 class="slide-tit">
				<span>2、商品清单</span>
			</h2>
			<table width="100%" align="center" class="cart-table" border="0"
				cellspacing="0" cellpadding="8">
				<tbody>
					<tr>
						<th align="left" colspan="2">商品信息</th>
						<th width="84" align="left">单价</th>
						<th width="104" align="center">数量</th>
						<th width="104" align="left">金额(元)</th>
					</tr>

					<c:forEach var="m" items="${list}">
						
						<tr>
							
							<td width="68"><a target="_blank" href="/goods/show-97.html">
									<img src="${ctx}/${m.goods.goodsImg}" class="img">
							</a></td>
							<td><a target="_blank" href="/goods/show-97.html">${m.goods.goodsName}</a>
								<p class="stxt"></p></td>
							<td>￥${m.goods.sellPrice}</td>
							<td align="center">
								<div class="buy-box">
									<input name="goodsId" type="hidden" value="${m.goods.id}">
									<input name="goNum" class="input" value="${m.goNum}"
										style="border: solid 1px #666;">
								</div>
							</td>
							<td><span class="red"> ￥<label name="amountCount"
									id="goodsP">${m.goNum * m.goods.sellPrice}</label>
							</span></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
			<h2 class="slide-tit">
				<span>3、结算信息</span>
			</h2>

			<div class="buy-foot clearfix">
				<div class="left-box">
					<dl>
						<dt>订单备注(100字符以内)</dt>
						<dd>
							<textarea name="message" class="input" style="height: 35px;"></textarea>
						</dd>
					</dl>
				</div>
				<div class="right-box">
					<p>
						商品 <label class="price">${i}</label> 件&nbsp;&nbsp;&nbsp;&nbsp; 商品金额：￥<label
							id="goodsAmount" class="price">${sum}</label>
						元&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
					<p class="txt-box">
						应付总金额：￥<label  class="price">
						<input name="totalMoney" type="text" id="totalAmount" value="${sum}">
						</label>
					</p>
					<p class="btn-box">
						<a class="btn button" href="cart.html">返回购物车</a> 
						<input type="submit"  class="btn submit" value="确认提交"> 
					</p>
				</div>
			</div>
		</form>
	</div>
</body>
</html>