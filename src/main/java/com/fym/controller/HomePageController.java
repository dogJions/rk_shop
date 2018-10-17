package com.fym.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fym.entity.Goods;
import com.fym.entity.News;
import com.fym.entity.VipUser;

@Controller
@RequestMapping("/out")
public class HomePageController extends BaseController {

	// 主页
	@RequestMapping("/homePage")
	public String homePage(ModelMap modelMap,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum) {
		modelMap.put("shopAd", shopAdMapper.selectAll());
		modelMap.put("NewInfo", goodsService.selectNew(pageNum));
		modelMap.put("HotInfo", goodsService.selectHot(pageNum));
		modelMap.put("isActive", 0);
		return "index";
	}

	// 跳转登录界面
	@RequestMapping("/tologin")
	public String tologin() {
		return "login";
	}

	// 跳转退出登录界面
	@RequestMapping("/tologinout")
	public String tologinOut() {
		return "loginOut";
	}

	// 登录
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> login(String username, String password, HttpSession session, HttpServletRequest req) {
		Map<String, Object> map = new HashMap<>();

		VipUser user = vipUserService.login(username);
		if (user == null || !user.getPassword().equals(password)) {
			map.put("stats", 0);
			map.put("msg", "账号或密码错误");
		} else if (user.getIsState() == 0) {
			map.put("stats", 0);
			map.put("msg", "账号已停用");
		} else {
			map.put("stats", 1);
			session.setAttribute("user", user);
			session.setAttribute("lastDateTime", user.getLastLoginTime());

			user.setLastLoginTime(new Date());
			user.setLastIp(req.getRemoteAddr());
			vipUserService.update(user);
		}
		return map;
	}

	// 跳转注册界面
	@RequestMapping("/toadd")
	public String toadd() {
		return "add";
	}

	// 注册
	@RequestMapping("/add")
	@ResponseBody
	public Map<String, Object> add(VipUser user, String code, HttpSession session) {
		user.setAddTime(new Date());
		user.setRechargeMoney(new BigDecimal(0));
		user.setIsState(1);
		user.setUserImg("\\upload\\admin.jpg");

		Map<String, Object> map = new HashMap<>();

		if (!session.getAttribute("admin_code").equals(code)) {
			map.put("stats", 0);
			map.put("msg", code + "验证码错误" + session.getAttribute("admin_code"));
		} else {
			map.put("stats", 1);
			map.put("msg", "成功");
			vipUserService.add(user);
		}

		
		return map;
	}

	// 联系
	@RequestMapping("/callwe")
	public String callwe(ModelMap modelMap) {
		modelMap.put("isActive", 5);
		return "callwe";
	}

	// 产品列表页
	@RequestMapping("/goodsList")
	public String goodsList(ModelMap modelMap,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id,
			@RequestParam(value = "range", required = false, defaultValue = "1") int range,
			@RequestParam(value = "paixu", required = false, defaultValue = "1") int paixu) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("range", range);
		map.put("paixu", paixu);
		modelMap.put("info", goodsService.selectByList(pageNum, map));
		return "List/GoodsList";
	}

	// 产品列表页
	@RequestMapping("/allList")
	public String allList(ModelMap modelMap) {
		modelMap.put("goodsCaList", goodsCaService.selectAll());
		modelMap.put("isActive", 1);
		return "AllList";
	}

	// 商品详细页
	@RequestMapping("/product")
	public String product(int id, ModelMap modelMap) {
		Goods goods = goodsService.selectByid(id);
		goods.setClickCount(goods.getClickCount() + 1);
		goodsService.update(goods);
		modelMap.put("product", goods);
		modelMap.put("isActive", 1);
		return "product";
	}

	// 跳转新闻页
	@RequestMapping("/to_news_list")
	public String toNewsList(ModelMap modelMap) {
		modelMap.put("news", newsCTLSerivce.selectAll());
		modelMap.put("isActive", 4);
		return "/news";
	}

	// 新闻列表页
	@RequestMapping("/news_list")
	public String newsList(ModelMap modelMap,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(value = "id", required = false, defaultValue = "0") int id) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		modelMap.put("info", newsService.selectByCId(map, pageNum));

		return "/List/newsList";
	}

	// 新闻详细页
	@RequestMapping("/to_news")
	public String news(int id, ModelMap modelMap) {
		News news = newsService.selectByid(id);
		news.setCountClick(news.getCountClick() + 1);
		newsService.update(news);
		modelMap.put("newss", news);
		modelMap.put("isActive", 4);
		return "/List/newsA";
	}
}
