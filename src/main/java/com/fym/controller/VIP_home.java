package com.fym.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fym.entity.RechargeLog;
import com.fym.entity.ShopOrder;
import com.fym.entity.UserAddress;
import com.fym.entity.VipUser;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/vip")
public class VIP_home extends BaseController {

	// 跳转个人主页
	@RequestMapping("/home")
	public String home(ModelMap modelMap, HttpSession session) {

		if (session.getAttribute("user") == null) {
			return "redirect:/out/tologin";
		}
		modelMap.put("isActive", 3);
		return "/vip/index";
	}

	// 跳转订单页面
	@RequestMapping("/order")
	public String order() {
		return "/vip/order";
	}

	// 订单列表
	@RequestMapping("/order_list")
	public String orderList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			shopOrderService.deleteById(id);
		}

		VipUser user = (VipUser) session.getAttribute("user");
		PageInfo<ShopOrder> info = shopOrderService.selectByUserId(user.getId(), pageNum);
		modelMap.put("info", info);
		return "vip/list/orderList";
	}

	// 跳转收货地址页面
	@RequestMapping("/address")
	public String address() {
		return "/vip/address";
	}

	// 跳转收货地址页面
	@RequestMapping("/address_list")
	public String addressList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {
		if (id != 0) {
			UserAddress address = addressService.selectByid(id);
			addressService.updateDefault();
			address.setIsDefault(1);
			addressService.update(address);
		}

		VipUser user = (VipUser) session.getAttribute("user");
		int userId = user.getId();
		PageInfo<UserAddress> info = addressService.selectByUserId(userId, pageNum);
		modelMap.put("info", info);
		return "/vip/list/addressList";
	}

	// 跳转编辑地址页
	@RequestMapping("/edit_adr")
	public String editAdr(int id, ModelMap modelMap) {
		UserAddress address = addressService.selectByid(id);
		modelMap.put("address", address);
		return "/vip/aditAdr";
	}

	// 编辑地址页提交
	@RequestMapping("/add_address")
	public String add_address(HttpSession session, UserAddress address) {
		addressService.update(address);
		if (address.getId() == 0 || address.getId() == null) {
			address.setIsDefault(0);
			addressService.add(address);
		}
		return "redirect:/vip/home";
	}

	// 跳转充值页面
	@RequestMapping("/to_recharge")
	public String torecharge() {
		return "/vip/recharge";
	}

	// 充值
	@RequestMapping("/recharge")
	public String recharge(HttpSession session, RechargeLog recharge) {
		VipUser user = (VipUser) session.getAttribute("user");
		recharge.setUserId(user.getId());
		recharge.setAddTime(new Date());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		recharge.setRechargeSn(sdf.format(new Date()));
		rechargeService.add(recharge);
		user.setRechargeMoney(user.getRechargeMoney().add(new BigDecimal(recharge.getMoney().toString())));

		int id = user.getId();
		vipUserService.update(user);
		session.removeAttribute("user");
		session.setAttribute("user", vipUserService.selectByid(id));

		return "redirect:/vip/home";
	}

	// 跳转充值列表页面
	@RequestMapping("/to_rr")
	public String toRR() {
		return "/vip/recharge_record";
	}
	
	//充值列表
	@RequestMapping("/to_r_r_list")
	public String toRRList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum
			, ModelMap modelMap) {
		VipUser user = (VipUser) session.getAttribute("user");
		int id=user.getId();
		modelMap.put("info",rechargeService.selectByUserId(pageNum, id) );
		
		return "/vip/list/r_r_list";
	}
	
	//跳转修改密码页
	@RequestMapping("/to_update_psw")
	public String toUpdatePsw() {
		return "/vip/update_psw";
	}
	
	//修改密码
	@RequestMapping("/update_psw")
	@ResponseBody
	public Map<String, Object> updatePsw(
			String oldPassword,
			String txtPassword,
			HttpSession session
			) {
		VipUser user=(VipUser) session.getAttribute("user");
		Map<String, Object> map = new HashMap<>();
		if(!user.getPassword().equals(oldPassword)) {
			map.put("stats", 0);
			map.put("msg", "旧密码错误");
		}else {
			map.put("stats", 1);
			user.setPassword(txtPassword);
			
			int id = user.getId();
			vipUserService.update(user);
			session.removeAttribute("user");
			session.setAttribute("user", vipUserService.selectByid(id));
		}
		return map;
	}
	
	//跳转修改用户页面
	@RequestMapping("/to_update_user")
	public String updatUser() {
		
		return "/vip/user";
	}
	
	
}
