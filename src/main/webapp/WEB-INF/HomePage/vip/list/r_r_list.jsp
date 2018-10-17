<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:forEach var="m" items="${info.list }">
	<tr>
		<td>${m.id}</td>
		<td>${m.rechargeSn}</td>
		<td align="center">${m.money}</td>
		<td align="center"><fmt:formatDate value="${m.addTime}"
				pattern="yyyy-MM-dd" /></td>
	</tr>

	<tr>
		<td><input type="hidden" id="pageNum" value="${info.pageNum}">
			<input type="hidden" id="page" value="${info.pages}"></td>
	</tr>
</c:forEach>