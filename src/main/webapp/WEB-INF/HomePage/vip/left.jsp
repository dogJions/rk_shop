<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="section clearfix" style="margin-top: 10px;">
    <!--页面左边-->
    <div class="left-260">
        <div class="bg-wrap">
            <div class="avatar-box">
                <a class="img-box" href="/user/center/avatar.html">
                    <img src="${ctx}/${user.userImg}">
                </a>
                <h3>
                    ${user.username}
                </h3>
                <p><b>注册会员</b></p>
            </div>
            <div class="center-nav">
                <ul>
                    <li>
                        <h2>
                            <i class="iconfont icon-order"></i>
                            <span>订单管理</span>
                        </h2>
                        <div class="list">
                            <p><a href="javascript:order();"><i class="iconfont icon-arrow-right"></i>交易订单</a></p>
                            <p><a href="javascript:address();"><i class="iconfont icon-arrow-right"></i>收货地址</a></p>
                        </div>
                    </li>
                    <li>
                        <h2>
                            <i class="iconfont icon-amount"></i>
                            <span>余额管理</span>
                        </h2>
                        <div class="list">
                            <p><a href="javascript:recharge();"><i class="iconfont icon-arrow-right"></i>账户充值</a></p>
                            <p><a href="javascript:rr();"><i class="iconfont icon-arrow-right"></i>充值记录</a></p>
                        </div>
                    </li>
                    <li>
                        <h2>
                            <i class="iconfont icon-user"></i>
                            <span>账户管理</span>
                        </h2>
                        <div class="list">
                            <p><a href="javascript:updateUser();"><i class="iconfont icon-arrow-right"></i>账户资料</a></p>
                            <p><a href="javascript:updatepsw()"><i class="iconfont icon-arrow-right"></i>修改密码</a></p>
                            <p><a href="${ctx}/out/tologinout"><i class="iconfont icon-arrow-right"></i>退出登录</a></p>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </div>