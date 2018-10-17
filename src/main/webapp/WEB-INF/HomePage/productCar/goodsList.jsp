<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<c:forEach var="m" items="${info.list}">
			 <tr>
            <td width="68">
                <a target="_blank" href="/goods/show-97.html">
                    <img src="${ctx}/${m.goods.goodsImg}" class="img">
                </a>
            </td>
            <td>
                <a target="_blank" href="/goods/show-97.html">${m.goods.goodsName}</a>
                <p class="stxt"></p>
            </td>
            <td>
                ￥${m.goods.sellPrice}
            </td>
            <td align="center">
                <div class="buy-box">
                   <input  class="input" value="${m.goNum}" style="border: solid 1px #666;">
                </div>
            </td>
            <td>
                <span class="red">
                    ￥<label name="amountCount">${m.goNum * m.goods.sellPrice} </label>
                </span>
            </td>
            <td align="center">
                <a  href="javascript:ajax(${m.id});">删除</a>
            </td>
        </tr>
      
			
			<tr>
				<input type="hidden" id="pageNum" value="${info.pageNum}">
				<input type="hidden" id="pages" value="${info.pages}">
			</tr>
	</c:forEach>