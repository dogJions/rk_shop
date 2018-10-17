<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<ul class="n-list">
	<c:forEach var="m" items="${info.list}">
		<li>
			<h2>
				<a href="javascript:right(${m.id});">${m.newsTitle}</a>
			</h2>
			<div class="note">

				<b><img src="${ctx}/${m.newsImg}"></b>

				<p>${m.subTitle}</p>
				<div class="info">
					<span><i class="iconfont icon-date"></i>
					<fmt:formatDate value="${m.addTime}" pattern="yyyy-MM-dd" /> </span> <span>${m.commentCount}人评论</span>
					<span>${m.countClick}次浏览</span>
				</div>
			</div>
		</li>

		<input type="hidden" id="pageNum" value="${info.pageNum}">
		<input type="hidden" id="page" value="${info.pages}">
	</c:forEach>
</ul>
