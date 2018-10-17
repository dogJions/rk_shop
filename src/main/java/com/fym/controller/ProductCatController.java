package com.fym.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fym.entity.Goods;
import com.fym.entity.ShopOrder;
import com.fym.entity.ShopOrderGoods;
import com.fym.entity.UserAddress;
import com.fym.entity.UserCartLog;
import com.fym.entity.VipUser;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/car")
public class ProductCatController extends BaseController {

	// 跳转购物车页面
	@RequestMapping("/tocar")
	public String toCar(HttpSession session, ModelMap modelMap) {
		if (session.getAttribute("user") == null) {
			return "redirect:/out/tologin";
		}
		modelMap.put("isActive", 2);
		return "productCar/buyCar_1";

	}

	// 购物车列表
	@RequestMapping("/carlist")
	public String carList(HttpSession session, ModelMap modelMap,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			userCLMapper.deleteByPrimaryKey(id);
			pageNum = 1;
		}

		VipUser user = (VipUser) session.getAttribute("user");
		PageHelper.startPage(pageNum, 5);
		List<UserCartLog> list = userCLMapper.selectByUserId(user.getId());
		for (UserCartLog userCartLog : list) {
			System.out.println(userCartLog.getGoods().getId());
		}
		PageInfo<UserCartLog> info = new PageInfo<>(list);
		modelMap.put("info", info);
		return "productCar/goodsList";
	}

	// 添加物品到购物车
	@RequestMapping("/add")
	@ResponseBody
	public Map<String, Object> add(int id, int number, HttpSession session) {

		Goods goods = goodsService.selectByid(id);
		UserCartLog userCL = new UserCartLog();
		Map<String, Object> map = new HashMap<>();

		VipUser user = (VipUser) session.getAttribute("user");
		if (user == null) {
			map.put("stats", 0);
			map.put("msg", "请先登录");
			return map;
		}

		userCL.setAddTime(new Date());
		userCL.setGoNum(number);
		userCL.setGoods(goods);
		userCL.setGoodsId(goods.getId());
		userCL.setUserId(user.getId());

		userCLMapper.insert(userCL);

		map.put("stats", 1);
		map.put("msg", "加入成功");

		return map;
	}

	// 单件商品购买
	@RequestMapping("/one_to_buy2")
	public String tobuy(UserCartLog ucl, HttpSession session, ModelMap modelMap) {

		if (session.getAttribute("user") == null) {
			return "redirect:/out/tologin";
		}

		VipUser user = (VipUser) session.getAttribute("user");
		ucl.setAddTime(new Date());
		ucl.setGoods(goodsService.selectByid(ucl.getGoodsId()));
		ucl.setUserId(user.getId());
		// userCLMapper.insert(ucl);

		List<UserCartLog> list = new ArrayList<>();
		list.add(ucl);

		UserAddress address = addressService.selectOne(user.getId());
		System.out.println(address);

		modelMap.put("address", address);
		modelMap.put("list", list);
		modelMap.put("isActive", 2);
		return "/productCar/buyCar_2";
	}

	// 生成订单
	@RequestMapping("/add_shop_og")
	public String addShopOg(ShopOrder shopOrder, HttpSession session,
			@RequestParam(value = "goodsId", required = false, defaultValue = "0") int id,
			@RequestParam(value = "goNum", required = false, defaultValue = "0") int goNum) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		VipUser user = (VipUser) session.getAttribute("user");

		shopOrder.setOrderSn("sn" + sdf.format(new Date()));
		shopOrder.setAddTime(new Date());
		shopOrder.setShopState(2);
		shopOrder.setUserId(user.getId());
		shopOrderService.add(shopOrder);

		Goods goods = goodsService.selectByid(id);
		ShopOrderGoods shopOG = new ShopOrderGoods();

		System.out.println(id + "" + goNum);
		System.out.println(goods);

		shopOG.setAddTime(new Date());
		shopOG.setGoodsId(id);
		shopOG.setUserId(user.getId());
		shopOG.setGoNum(goNum);
		shopOG.setCatalogId(goods.getCatalogId());
		shopOG.setGoodsImg(goods.getGoodsImg());
		shopOG.setGoodsName(goods.getGoodsName());
		shopOG.setGoodsSn(goods.getGoodsSn());
		shopOG.setOrderId(shopOrderService.selectBySn(shopOrder.getOrderSn()).getId());
		shopOG.setPrice(goods.getSellPrice());
		shopOG.setTotalPrice(shopOG.getPrice().multiply(BigDecimal.valueOf(goNum)));
		shopOGMapper.insert(shopOG);

		return "/productCar/end";
	}

	// 清空购物车
	@RequestMapping("/one_to_buy2_d")
	public String tobuyAll(HttpSession session, ModelMap modelMap) {

		if (session.getAttribute("user") == null) {
			return "redirect:/out/tologin";
		}
		
		VipUser user = (VipUser) session.getAttribute("user");

		UserAddress address = addressService.selectOne(user.getId());
		int i=0;
		BigDecimal sum=new BigDecimal("0");
		List<UserCartLog> UCL=userCLMapper.selectByUserId(user.getId());
		for (UserCartLog userCartLog : UCL) {
			i++;
			sum=sum.add(userCartLog.getGoods().getSellPrice().multiply(BigDecimal.valueOf(userCartLog.getGoNum())));
		}
		
		
		modelMap.put("address", address);
		modelMap.put("i", i);
		modelMap.put("sum", sum);
		modelMap.put("list", userCLMapper.selectByUserId(user.getId()));
		modelMap.put("isActive", 2);
		return "/productCar/buyCar_2_d";
	}

	// 生成订单
	@RequestMapping("/add_shop_og_d")
	public String addShopOgD(ShopOrder shopOrder, HttpSession session) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		VipUser user = (VipUser) session.getAttribute("user");

		shopOrder.setOrderSn("sn" + sdf.format(new Date()));
		shopOrder.setAddTime(new Date());
		shopOrder.setShopState(2);
		shopOrder.setUserId(user.getId());
		shopOrderService.add(shopOrder);
		
		List<UserCartLog> UCL=userCLMapper.selectByUserId(user.getId());
		for (UserCartLog userCartLog : UCL) {
			ShopOrderGoods shopOG = new ShopOrderGoods();
			shopOG.setAddTime(new Date());
			shopOG.setGoodsId(userCartLog.getGoods().getId());
			System.out.println(userCartLog.getGoods());
			shopOG.setUserId(user.getId());
			shopOG.setGoNum(userCartLog.getGoNum());
			shopOG.setCatalogId(userCartLog.getGoods().getCatalogId());
			shopOG.setGoodsImg(userCartLog.getGoods().getGoodsImg());
			shopOG.setGoodsName(userCartLog.getGoods().getGoodsName());
			shopOG.setGoodsSn(userCartLog.getGoods().getGoodsSn());
			shopOG.setOrderId(shopOrderService.selectBySn(shopOrder.getOrderSn()).getId());
			shopOG.setPrice(userCartLog.getGoods().getSellPrice());
			shopOG.setTotalPrice(shopOG.getPrice().multiply(BigDecimal.valueOf(shopOG.getGoNum())));
			shopOGMapper.insert(shopOG);
			userCLMapper.deleteByPrimaryKey(userCartLog.getId());
		}

		return "/productCar/end";
	}
}
