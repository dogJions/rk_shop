<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/adminindex.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/public/css/font-awesome/font-awesome.min.css">
</head>
<body>
  <div class="header-top">
      <div class="logo">
            LOGO
      </div>
      <div class="right">
          <img src="${ctx}/public/images/exit.png">&nbsp;<a  href="${ctx}/out/homePage">退出</a>
      </div>
  </div>
  <div class="menus-left">
      <div class="menus-top">
          <img src="${ctx}/public/images/nikimg.png" class="img-re">
          <p class="xttong-admin">${adminUser.username}</p>
          <p class="xitong-p">系统管理员</p>
      </div>
      <div class="menus-main">
            <ul>
                <li>
                    <a href="${ctx}/admin/to_admin_work_index" target="targetmain"> <i class="iconfont dicon  icon-home"></i>首页<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_admin_work_product" target="targetmain"> <i class="iconfont dicon icon-table"></i>产品管理<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_product_classify" target="targetmain"> <i class="iconfont dicon  icon-th-large"></i>产品分类<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_news" target="targetmain"><i class="iconfont  dicon icon-book"></i>新闻资讯<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_news_classify" target="targetmain"><i class="iconfont  dicon icon-bolt"></i>新闻分类<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_shoporder" target="targetmain"> <i class="iconfont  dicon  icon-truck"></i>订单管理<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_vip" target="targetmain"><i class="iconfont  dicon   icon-user"></i>会员管理<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_charge" target="targetmain">   <i class="iconfont  icon-money dicon"></i>充值记录<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/admin/to_admin" target="targetmain"> <i class="iconfont  dicon  icon-user-md"></i>系统用户<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
                <li>
                    <a href="${ctx}/out/homePage" > <i class="iconfont  dicon  icon-sign-blank"></i>退出<i class="iconfont icon-angle-right right-jiantou"></i></a>
                </li>
            </ul>
      </div>
  </div>

  <div class="conter-main">
    <iframe name="targetmain" class="iframe" src="${ctx}/admin/to_admin_work_index" scrolling="yes"></iframe>
  </div>
</body>
</html>