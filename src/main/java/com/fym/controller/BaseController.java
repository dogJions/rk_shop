package com.fym.controller;

import org.springframework.beans.factory.annotation.Autowired;

import com.fym.dao.ShopAdMapper;
import com.fym.dao.ShopOrderGoodsMapper;
import com.fym.dao.UserCartLogMapper;
import com.fym.service.AddressService;
import com.fym.service.GoodsCaService;
import com.fym.service.GoodsService;
import com.fym.service.NewsCTLService;
import com.fym.service.NewsService;
import com.fym.service.RechargeService;
import com.fym.service.ShopOrderService;
import com.fym.service.UserService;
import com.fym.service.VipUserService;

public class BaseController {
	
	//新闻分类表
	@Autowired NewsCTLService newsCTLSerivce;
	
	//新闻表
	@Autowired NewsService newsService;
	
	//充值表
	@Autowired RechargeService rechargeService;
	
	//用户地址表
	@Autowired AddressService addressService;
	
	//订单表
	@Autowired ShopOrderService shopOrderService;
	
	//订单商品表
	@Autowired ShopOrderGoodsMapper shopOGMapper;
	
	//购物表
	@Autowired UserCartLogMapper userCLMapper;
	
	//广告表
	@Autowired ShopAdMapper shopAdMapper;
	
	//商品表
	@Autowired GoodsService goodsService;
	
	//后台用户表
	@Autowired UserService userService;
	
	//商品分类表
	@Autowired GoodsCaService goodsCaService;
	
	//前台用户表
	@Autowired VipUserService vipUserService;
}
