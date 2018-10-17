<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<c:forEach var="m" items="${info.list}">
		 <tr>
                    <td>${m.orderSn}</td>
                    <td>
						<c:forEach var="og" items="${m.shopOG}">
	                        <a target="_blank" title="${og.goodsName}" href="${ctx}/out/product?id=${og.goodsId}">
	                            <img width="60" height="60" alt="${og.goodsName}" src="${ctx}/${og.goodsImg}" class="img">
	                        </a>
						</c:forEach>
                    </td>
                    <td align="center">${m.userName}</td>
                    <td align="center"><strong>￥${m.totalMoney}</strong><br>货到付款</td>
                    <td align="center"><fmt:formatDate value="${m.addTime}" pattern="yyyy-MM-dd"/>  </td>
                    <td align="center">
                      <c:if test="${m.shopState eq 0}">未支付</c:if>
                      <c:if test="${m.shopState eq 1}">未确认</c:if>
                      <c:if test="${m.shopState eq 2}">已发货</c:if>
                    </td>
                    <td align="center">
                     <!--    <a href="orderDefault.html">查看订单</a><br>  -->

                    

                    </td>
                </tr>
                <tr>
                	<td>
                	<input type="hidden" id="pageNum" value="${info.pageNum}">
                	<input type="hidden" id="page" value="${info.pages}"> 
                	</td>
                </tr>
	</c:forEach>