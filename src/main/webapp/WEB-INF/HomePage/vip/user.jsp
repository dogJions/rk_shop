<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <!--/页面左边-->

    <!--页面左边-->
    <div class="right-auto">
        <div class="bg-wrap" style="min-height:765px;">


            <div class="sub-tit " style="margin: 0px;">
                <a class="add" href="javascript:history.go(-1);"><i class="iconfont icon-reply"></i>返回</a>
                <ul>
                    <li class="selected">
                        <a href="javascript:;">账号资料</a>
                    </li>
                </ul>
            </div>

		<form action="" method="post" enctype="multipart/form-data">
            <div class="form-box">
                
                <dl class="form-group">
                    <dt>昵称：</dt>
                    <dd>
                        <input name="username" id="txtNickName" type="text" class="input" value=" ${user.username}" datatype="*" sucmsg=" ">
                </dl>

                <dl class="form-group">
                    <dt>头像：</dt>
                    <dd>
                    	<img alt="" width="60" height="60" src="${ctx}/${user.userImg}">
                        <input name="img" id="img" type="file"  value="">
                </dl>


                <dl class="form-group">
                    <dt>邮箱：</dt>
                    <dd>
                        <input name="email" id="txtEmail" type="text" class="input" value="${user.email}" datatype="e" sucmsg=" ">
                </dl>
                <dl class="form-group">
                    <dt>手机：</dt>
                    <dd>
                        <input name="phone" id="txtMobile" type="text" class="input" value="${user.phone}" datatype="m" sucmsg=" ">
                </dl>
                
                
                <dl class="form-group">
                    <dd>
                        <input id="btnSubmit" name="btnSubmit" type="submit" value="确认修改" class="submit">
                    </dd>
                </dl>
            </div>
		</form>

        </div>
    </div>
