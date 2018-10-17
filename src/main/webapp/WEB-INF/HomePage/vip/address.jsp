<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="${ctx}/public/js/HomePageJs/vip/address.js"></script>

<div class="right-auto">
        <div class="bg-wrap" style="min-height:765px;">


            <div class="sub-tit " style="margin: 0px;">
                <a class="add" href="javascript:editadr(0)"><i class="iconfont icon-reply"></i>新增地址</a>
                <ul>
                    <li class="selected">
                        <a href="javascript:;">收货地址</a>
                    </li>
                </ul>
            </div>

            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ftable">
                <tbody>
                <tr>
                    <th align="left">收货地址</th>
                    <th width="18%" align="left">手机</th>
                    <th width="20%" align="left">邮箱</th>
                    <th width="100">操作
                    </th>
                </tr>
              </tbody>

				<tbody id="addressList">
					
				</tbody>
                
                <tr>
                	<td colspan="4" id="page"></td>
                </tr>
             </table>
        </div>
    </div>
