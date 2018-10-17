<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <c:forEach var="m" items="${info.list}">
                <tr>
                    <td>
                        (${m.userName}) ${m.province},${m.city},${m.area} ${m.address}
                    </td>
                    <td>${m.phone}</td>
                    <td>${m.email}</td>
                    <td align="center">
                        <a href="javascript:editadr(${m.id})">编辑</a> |

                    <c:if test="${m.isDefault eq 0}">   <a  href="javascript:ajax(${m.id})">设为默认</a> </c:if> 
					<c:if test="${m.isDefault eq 1}">   默认地址   </c:if> 
                    </td>
                </tr>
                
                <tr>
                	<td>
                	<input type="hidden" id="pageNum" value="${info.pageNum}">
                	<input type="hidden" id="page" value="${info.pages}"> 
                	</td>
                </tr>
 </c:forEach>