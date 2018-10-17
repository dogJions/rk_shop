package com.fym.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fym.entity.Goods;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

	// 后台主页左边
	@RequestMapping("/to_admin_index")
	public String toAdminindex(HttpSession session) {

		if (session.getAttribute("adminUser") == null) {
			return "redirect:/adminLogin/to_admin_login";
		}
		return "/admin/index";
	}

	// 后台主页右边
	@RequestMapping("/to_admin_work_index")
	public String toAdminWorkIndex() {

		return "/admin/work/index";
	}

	// 跳转产品管理
	@RequestMapping("/to_admin_work_product")
	public String toAdminWorkProduct() {
		return "/admin/work/productManage/index";
	}

	// 产品列表
	@RequestMapping("/to_admin_work_product_list")
	public String toAdminWorkProductList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id,
			@RequestParam(value = "like", required = false, defaultValue = "") String like) {

		if (id != 0) {
			goodsService.deleteById(id);
		}
		modelMap.put("info", goodsService.selectByLike(pageNum, like));

		return "/admin/work/productManage/list";
	}

	// 跳转添加产品页面
	@RequestMapping("/to_admin_work_product_add")
	public String toAdminWorkProductAdd(ModelMap modelMap) {
		modelMap.put("goodsCa", goodsCaService.selectAll());
		return "/admin/work/productManage/add";
	}

	// 添加产品页面
	@RequestMapping("/admin_work_product_add")
	public String AdminWorkProductAdd(@RequestParam("fileImg") MultipartFile file, Goods goods, HttpSession session)
			throws Exception {
		String fileName = file.getOriginalFilename();
		String newFileName = new Date().getTime() + fileName.substring(fileName.lastIndexOf("."));

		String basePath = session.getServletContext().getRealPath("/upload/");
		file.transferTo(new File(basePath + newFileName));

		goods.setGoodsImg("/upload/" + newFileName);
		goods.setAddTime(new Date());
		goods.setClickCount(0);

		goodsService.add(goods);
		return "/admin/work/productManage/index";
	}

	// 产品编辑页
	@RequestMapping("/to_admin_work_product_edit")
	public String editProduct(int id, ModelMap modelMap) {

		modelMap.put("goodsCa", goodsCaService.selectAll());
		modelMap.put("goods", goodsService.selectByid(id));
		return "/admin/work/productManage/edit";
	}

	// 跳转产品分类页面
	@RequestMapping("/to_product_classify")
	public String toProductClassify(ModelMap modelMap) {
		modelMap.put("goodsCa", goodsCaService.selectAll());
		return "/admin/work/productManage/classify";
	}

	// 跳转新闻页面
	@RequestMapping("/to_news")
	public String toNews() {

		return "/admin/work/news/index";
	}

	// 新闻列表
	@RequestMapping("/news_list")
	public String newsList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			newsService.deleteById(id);
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", 0);
		modelMap.put("info", newsService.selectByCId(map, pageNum));

		return "/admin/work/news/list";
	}

	// 跳转新闻分类页面
	@RequestMapping("/to_news_classify")
	public String toNewsClassify(ModelMap modelMap) {
		modelMap.put("newsCa", newsCTLSerivce.selectAll());
		return "/admin/work/news/classify";
	}

	// 跳转订单页面
	@RequestMapping("/to_shoporder")
	public String toShopOrder() {

		return "/admin/work/shopOrder/index";
	}

	// 订单列表
	@RequestMapping("/ShopOrder_list")
	public String ShopOrderList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			shopOrderService.deleteById(id);
		}

		modelMap.put("info", shopOrderService.selectAll(pageNum));

		return "/admin/work/shopOrder/list";
	}

	// 跳转vip页面
	@RequestMapping("/to_vip")
	public String toVip() {

		return "/admin/work/vip/index";
	}

	// vip列表
	@RequestMapping("/vip_list")
	public String vipList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			vipUserService.deleteById(id);
		}

		modelMap.put("info", vipUserService.selectAll(pageNum));

		return "/admin/work/vip/list";
	}

	// 跳转充值记录页面
	@RequestMapping("/to_charge")
	public String tocharge() {

		return "/admin/work/charge/index";
	}

	// 充值记录列表
	@RequestMapping("/charge_list")
	public String chargeList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			rechargeService.deleteById(id);
		}

		modelMap.put("info", rechargeService.selectAll(pageNum));

		return "/admin/work/charge/list";
	}

	// 跳转adminuser页面
	@RequestMapping("/to_admin")
	public String toadmin() {

		return "/admin/work/admin/index";
	}

	// adminuser列表
	@RequestMapping("/admin_list")
	public String adminvList(HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum, ModelMap modelMap,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {

		if (id != 0) {
			userService.deleteById(id);
		}

		modelMap.put("info", userService.selectAll(pageNum));

		return "/admin/work/admin/list";
	}
}
