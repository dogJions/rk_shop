<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<c:forEach var="m" items="${info.list}">
		<tr>
            <td>${m.id}</td>
            <td>${m.username}</td>
            <td><img width="60" height="60" alt="" src="${ctx}/${m.userImg}"> </td>
            <td><fmt:formatDate value="${m.addTime}" pattern="yyyy-MM-dd"/> </td>
            <td>${m.phone}</td>
            <td>${m.email}</td>
            <td>${m.rechargeMoney}</td>
            <td>${m.isState}</td>
           
            <td>     <a href="javascript:ajax(${m.id});" class="tablelink"> 删除</a></td>
        </tr>
        
        <tr>
             <td>
                <input type="hidden" id="pageNum" value="${info.pageNum}">
                <input type="hidden" id="page" value="${info.pages}"> 
             </td>   	
        </tr>
	</c:forEach>