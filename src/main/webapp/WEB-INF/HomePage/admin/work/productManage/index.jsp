<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${ctx}/public/css/adminbase.css">
    <script type="text/javascript" src="${ctx}/public/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/admin/work/productList.js"></script>
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
            <td  width="90%">
                <ul class="seachform" style="margin-top: 15px;float: right;">
                    <li><label>综合查询</label><input id="like" name="like" value="" type="text" class="scinput"></li>
                   


                    <li><label>&nbsp;</label><input name="" type="button" onclick="ajax(0)" class="scbtn" value="查询"></li>

                </ul>
            </td>
        </tr>
    </table>




    <table class="tablelist">
        <thead>
        <tr>
            <th>编号</th>
            <th>商品名称</th>
            <th>商品货号</th>
            <th>商品图片</th>
            <th>添加时间</th>
            <th>市场价格</th>
            <th>出售价格</th>
            <th>库存数量</th>
            <th>点击数量</th>
            <th>商品分类编号</th>
            <th>是否新品</th>
            <th>是否热销</th>
            <th>是否上架</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="list">
        

        </tbody>
        
        <tr>
             <td colspan="14" id="pages"></td>
        </tr>
    </table>

  
</div>

</body>
</html>