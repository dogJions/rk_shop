<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <div class="left-auto">
        <div class="bg-wrap">
            <div class="meta">
                <h2>${newss.newsTitle}</h2>
                <div class="info">
                    <span><i class="iconfont icon-date"></i><fmt:formatDate value="${newss.addTime}" pattern="yyyy-MM-dd"/> </span>
                    <span><i class="iconfont icon-comment"></i><script type="text/javascript" src="#"></script>${newss.commentCount}人评论</span>
                    <span><i class="iconfont icon-view"></i><script type="text/javascript" src="#"></script>${newss.countClick}次</span>
                </div>
                <div class="note">
                    <p>${newss.subTitle}</p>
                </div>
            </div>

            <div class="entry">
               ${newss.description}
            </div>

        </div>
    </div>
