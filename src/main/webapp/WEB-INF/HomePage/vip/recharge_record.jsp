<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <script type="text/javascript" src="${ctx}/public/js/HomePageJs/vip/rr.js"></script>
 <div class="right-auto">
        <div class="bg-wrap" style="min-height:765px;">


            <div class="sub-tit " style="margin: 0px;">
                <a class="add" href="javascript:window.history.go(-1)"><i class="iconfont icon-reply"></i>返回</a>
                <ul>
                    <li class="selected">
                        <a href="javascript:;">充值记录</a>
                    </li>
                </ul>
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ftable">
                <tbody><tr>
                    <th width="6%" align="left">编号</th>
                    <th align="left" width="20%">充值单号</th>
                    <th width="12%">充值金额</th>
                    <th width="11%">时间</th>
                </tr>
                <!--取得一个DataTable-->
                <!--取得分页页码列表-->
                </tbody>
        		
        		<tbody id="RRList">
        			
        		</tbody>
        		
        		<tr>
        			<td colspan="4" id="page"></td>
        		</tr>                
             </table>

        </div>
    </div>
