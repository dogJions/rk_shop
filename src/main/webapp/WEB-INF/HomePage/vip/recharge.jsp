<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="right-auto">
	<div class="bg-wrap" style="min-height: 765px;">


		<div class="sub-tit " style="margin: 0px;">
			<a class="add" href="${ctx}/vip/home"><i
				class="iconfont icon-reply"></i>返回</a>
			<ul>
				<li class="selected"><a href="javascript:;">账户充值</a></li>
			</ul>
		</div>
		
		<form action="${ctx}/vip/recharge" method="post">
			<div class="form-box" style="margin: 0px;">
				<dl class="form-group">
					<dt>账户余额：</dt>
					<dd>
						当前账户金额为：<b>￥${user.rechargeMoney}</b> 元
					</dd>
				</dl>
				<dl class="form-group">
					<dt>充值金额：</dt>
					<dd>
						<input name="money" id="order_amount" type="text"
							class="input code" onkeydown="return checkNumber(event);"
							datatype="n" nullmsg="请输入金额" sucmsg=" "> 元 <span
							class="Validform_checktip"></span>
					</dd>
				</dl>
				<dl class="form-group">
					<dd>
						<input id="btnSubmit" name="btnSubmit" type="submit" value="确认充值"
							class="submit">
					</dd>
				</dl>
			</div>
		</form>
	</div>
</div>
