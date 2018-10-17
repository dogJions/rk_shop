<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<c:forEach var="m" items="${info.list}">
		<tr>
            <td>${m.id}</td>
            <td>${m.goodsName}</td>
            <td>${m.goodsSn}</td>
            <td><img width="60" height="60" alt="" src="${ctx}/${m.goodsImg}"> </td>
            <td><fmt:formatDate value="${m.addTime}" pattern="yyyy-MM-dd"/> </td>
            <td>${m.marketPrice}</td>
            <td>${m.sellPrice}</td>
            <td>${m.goodsNumber}</td>
            <td>${m.clickCount}</td>
            <td>${m.catalogId}</td>
            <td>
            <c:if test="${m.isNew eq 1}">是</c:if> 
            <c:if test="${m.isNew eq 0}">否</c:if> 
            </td>
            <td>
            <c:if test="${m.isHot eq 1}">是</c:if> 
            <c:if test="${m.isHot eq 0}">否</c:if> 
            </td>
            <td>
            <c:if test="${m.isOnSale eq 1}">是</c:if> 
            <c:if test="${m.isOnSale eq 0}">否</c:if> 
            </td>
            <td><a href="${ctx}/admin/to_admin_work_product_edit?id=${m.id}" class="tablelink">编辑</a>     <a href="javascript:ajax(${m.id});" class="tablelink"> 删除</a></td>
        </tr>
        
        <tr>
             <td>
                <input type="hidden" id="pageNum" value="${info.pageNum}">
                <input type="hidden" id="page" value="${info.pages}"> 
             </td>   	
        </tr>
	</c:forEach>