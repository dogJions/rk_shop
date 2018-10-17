<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <div class="right-auto">
        <div class="bg-wrap" style="min-height:765px;">


            <div class="sub-tit " style="margin: 0px;">
                <a class="add" href="${ctx}/vip/home"><i class="iconfont icon-reply"></i>返回</a>
                <ul>
                    <li class="selected">
                        <a href="javascript:;">编辑地址</a>
                    </li>
                </ul>
            </div>

	<form action="${ctx}/vip/add_address" method="post" >
		
		<input name="id" type="hidden" value="${address.id eq null?0:address.id}" >
		<input name="userId" type="hidden" value="${user.id}" >
		<input name="isDefault" type="hidden" value="${address.isDefault}" >
	
            <div class="form-box">
                <dl class="form-group">
                    <dt>收件人姓名：</dt>
                    <dd>
                        <input name="userName" value="${address.userName}" id="txtAcceptName" type="text" class="input" datatype="s1-50" nullmsg="请填写收件人用户名" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>所属地区：</dt>
                    <dd>
                        <select id="txtProvince" name="province" class="select"><option value="">所属省份</option><option value="北京市">北京市</option><option value="天津市">天津市</option><option value="河北省">河北省</option><option value="山西省">山西省</option><option value="内蒙古自治区">内蒙古自治区</option><option value="辽宁省">辽宁省</option><option value="吉林省">吉林省</option><option value="黑龙江省">黑龙江省</option><option value="上海市">上海市</option><option value="江苏省">江苏省</option><option value="浙江省">浙江省</option><option value="安徽省">安徽省</option><option value="福建省">福建省</option><option value="江西省">江西省</option><option value="山东省">山东省</option><option value="河南省">河南省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="广东省">广东省</option><option value="广西壮族自治区">广西壮族自治区</option><option value="海南省">海南省</option><option value="重庆市">重庆市</option><option value="四川省">四川省</option><option value="贵州省">贵州省</option><option value="云南省">云南省</option><option value="西藏自治区">西藏自治区</option><option value="陕西省">陕西省</option><option value="甘肃省">甘肃省</option><option value="青海省">青海省</option><option value="宁夏回族自治区">宁夏回族自治区</option><option value="新疆维吾尔自治区">新疆维吾尔自治区</option><option value="香港特别行政区">香港特别行政区</option><option value="澳门特别行政区">澳门特别行政区</option><option value="台湾省">台湾省</option><option value="其它">其它</option></select>
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>市：</dt>
                    <dd>
                        <input name="city" value="${address.city}" id="txtAddress" type="text" class="input" maxlength="255" datatype="*0-255" nullmsg="请填写详细地址" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                 <dl class="form-group">
                    <dt>县：</dt>
                    <dd>
                        <input name="area" value="${address.area}" id="txtAddress" type="text" class="input" maxlength="255" datatype="*0-255" nullmsg="请填写详细地址" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>详细地址：</dt>
                    <dd>
                        <input name="address" value="${address.address}" id="txtAddress" type="text" class="input" maxlength="255" datatype="*0-255" nullmsg="请填写详细地址" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
               
                <dl class="form-group">
                    <dt>联系电话：</dt>
                    <dd>
                        <input name="phone" value="${address.phone}" id="txtTelphone" type="text" class="input" maxlength="30" datatype="*0-20" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>电子邮箱：</dt>
                    <dd>
                        <input name="email" value="${address.email}" id="txtEmail" type="text" class="input" maxlength="30" datatype="*0-30" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>邮政编码：</dt>
                    <dd>
                        <input name="code" value="${address.code}" id="txtPostCode" type="text" class="input" maxlength="30" datatype="n0-10" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>验 证 码：</dt>
                    <dd>
                        <input id="txtCode" name="txtCode" type="text" class="input code" placeholder="输入验证码" datatype="s4-20" nullmsg="请输入右边显示的验证码" sucmsg=" ">
                        <a class="send" href="javascript:;" onclick="ToggleCode(this, '/tools/verify_code.ashx');return false;">
                            <img src="/tools/verify_code.ashx" width="80" height="22"> 看不清楚？
                        </a>
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dd>
                        <input id="btnSubmit" name="btnSubmit" type="submit" value="确认提交" class="submit">
                    </dd>
                </dl>
                
               
            </div>
     </form>
            
        </div>
    </div>
