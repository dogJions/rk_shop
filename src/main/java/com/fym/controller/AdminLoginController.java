package com.fym.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fym.entity.User;

@Controller
@RequestMapping("/adminLogin")
public class AdminLoginController extends BaseController {
	
	@RequestMapping("/to_admin_login")
	public String toAdminLogin(HttpSession session) {
		
		if (session.getAttribute("adminUser") != null) {
			return "redirect:/admin/to_admin_index";
		}
		
		return "/admin/login";
	}
	
	@RequestMapping("/admin_login")
	@ResponseBody
	public Map<String, Object> adminLogin(String username
			, String password
			, String code
			, HttpSession session
			,HttpServletRequest req) {
		Map<String, Object> map = new HashMap<>();
		User adminUser=userService.selectPsw(username);
		
		
		if (adminUser == null || !adminUser.getPassword().equals(password)) {
			map.put("stats", 0);
			map.put("msg", "账号或密码错误");
		}else if(adminUser.getStatus()==0) {
			map.put("stats", 0);
			map.put("msg", "账号已停用");
		}else if(!session.getAttribute("admin_code").equals(code)) {
			map.put("stats", 0);
			map.put("msg", code+"验证码错误"+session.getAttribute("admin_code"));
		} else {
			map.put("stats", 1);
			session.setAttribute("adminUser", adminUser);
			
			adminUser.setLastLoginTime(new Date());
			userService.update(adminUser);
		}
		return map;
	}
	
	@RequestMapping("/YZM")
	private void YZM( HttpServletResponse resp,HttpSession session) throws IOException {
		
		String [] checkAll=new String[]{"1","2","3","4","5","6","7","8","9","0","A","B","C","D"};
		String LOGINKEY="admin_code";
		
		int width=140;
		int height=40;
		BufferedImage bfImg=new BufferedImage(width,height, BufferedImage.TYPE_INT_ARGB);
		Graphics g=bfImg.getGraphics();
		Random random=new Random();
		StringBuffer sb=new StringBuffer();
		for(int i=0;i<5;i++)
		{
			sb.append(checkAll[random.nextInt(checkAll.length)]);
		}
		g.setColor(Color.BLACK);
		g.setFont(new Font("宋体",Font.BOLD,40));
		g.drawString(sb.toString(), 10, 35);
		session.setAttribute(LOGINKEY, sb.toString());
		ImageIO.write(bfImg, "PNG", resp.getOutputStream());
	}
}
