<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <script type="text/javascript" src="${ctx}/public/js/HomePageJs/vip/order.js"></script>
    <div class="right-auto">
        <div class="bg-wrap" style="min-height:765px;">


            <div class="sub-tit " style="margin: 0px;">
                <a class="add" href="${ctx}/vip/home"><i class="iconfont icon-reply"></i>返回</a>
                <ul>
                    <li class="selected">
                        <a href="#">交易订单</a>
                    </li>
                </ul>
            </div>

            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ftable">
                <tbody><tr>
                    <th width="16%" align="left">订单号</th>
                    <th align="left">订单商品</th>
                    <th width="10%">姓名</th>
                    <th width="12%">订单金额</th>
                    <th width="11%">下单时间</th>
                    <th width="10%">状态</th>
                    <!-- <th width="12%">操作</th> -->
                </tr>
                <!--取得一个DataTable-->
                <!--取得分页页码列表-->

			<tbody id="orderList">
				
			</tbody>
               
               <tr>
               		<td colspan="7" id="pages"></td>
               </tr>
                </tbody></table>
        </div>
    </div>
    <!--/页面左边-->

