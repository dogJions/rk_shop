<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${ctx}/public/css/adminbase.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/admin/work/news.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/laypage/laypage.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
    </ul>
</div>

<div class="session-main">

    <table style="border: 0px;width:100%;">
        <tr>
            <td align="left" width="10%">
            <a href="${ctx}/admin/to_admin_work_product_add" class="btn-add"><span><img src="${ctx}/public/images/t01.png"></span>添加</a>
        </td>
        </tr>
    </table>




    <table class="tablelist">
        <thead>
        <tr>
            <th>编号</th>
            <th>新闻标题</th>
            <th>新闻缩略图</th>
            <th>创建时间</th>
            <th>预览数</th>
            <th>评论数</th>
            <th>是否显示</th>
            <th>新闻分类</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="list">
        

        </tbody>
        
        <tr>
             <td colspan="10" id="pages"></td>
        </tr>
    </table>

  
</div>

</body>
</html>