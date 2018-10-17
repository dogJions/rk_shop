<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <script type="text/javascript" src="${ctx}/public/js/HomePageJs/vip/updatePsw.js"></script>

<div class="right-auto">
        <div class="bg-wrap" style="min-height:765px;">


            <div class="sub-tit " style="margin: 0px;">
                <a class="add" href="${ctx}/vip/home"><i class="iconfont icon-reply"></i>返回</a>
                <ul>
                    <li class="selected">
                        <a href="javascript:;">修改密码</a>
                    </li>
                </ul>
            </div>


            <div class="form-box">
                <dl class="form-group">
                    <dt>用户名：</dt>
                    <dd>${user.username}</dd>
                </dl>
                <dl class="form-group">
                    <dt>旧密码：</dt>
                    <dd>
                        <input name="txtOldPassword" id="txtOldPassword" type="password" class="input" datatype="*6-20" nullmsg="请输入旧密码" errormsg="密码范围在6-20位之间" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>新密码：</dt>
                    <dd>
                        <input name="txtPassword" id="txtPassword" type="password" class="input" datatype="*6-20" nullmsg="请输入新密码" errormsg="密码范围在6-20位之间" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dt>确认新密码：</dt>
                    <dd>
                        <input name="txtPassword1" id="txtPassword1" type="password" class="input" datatype="*" recheck="txtPassword" nullmsg="请再输入一次新密码" errormsg="两次输入的密码不一致" sucmsg=" ">
                        <span class="Validform_checktip"></span></dd>
                </dl>
                <dl class="form-group">
                    <dd>
                        <input id="btnSubmit" name="btnSubmit" type="button" value="确认修改" class="submit" onclick="updateAjax()">
                    </dd>
                </dl>
            </div>


        </div>
    </div>
