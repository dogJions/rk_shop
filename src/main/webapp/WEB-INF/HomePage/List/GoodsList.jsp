<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:forEach var="infol" items="${info.list}">
	 <li>
            <a href="#">
                <div class="img-box">
                    <div class="abs-txt">推荐</div>
                    <img src="${ctx}/${infol.goodsImg}">
                </div>
                <div class="info">
                    <a href="${ctx}/out/product?id=${infol.id}"><h3>${infol.goodsName}</h3></a>
                    <p class="price"><b>¥${infol.sellPrice}</b>元</p>
                    <p>
                        <strong>库存 ${infol.goodsNumber}</strong>
                        <span>市场价：<s>${infol.marketPrice}</s></span>
                    </p>
                </div>
            </a>
        </li>
        <input type="hidden" id="pageNum" value="${info.pageNum}">
		<input type="hidden" id="pages" value="${info.pages}">
</c:forEach>