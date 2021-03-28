package com.ltk.forum.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.ltk.forum.services.PostService;
import com.ltk.forum.services.UserService;

@Controller(value ="userControllerOfWeb")
public class UserController {

	@Autowired
	private UserService user;
	
	@Autowired
	private PostService postService;
	
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {	

		ModelAndView mav = new ModelAndView("frontend/index");
		
		mav.addObject("title", "Trang chủ");
		return mav;
	}
	

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView registerPage() {	

		ModelAndView mav = new ModelAndView("frontend/pages/signup");
		
		mav.addObject("title", "Đăng ký");
		return mav;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {	
		ModelAndView mav = new ModelAndView("frontend/pages/signin");
		//mav.addObject("title", "Đăng nhập");
		return mav;
	}
	
	@RequestMapping(value = "thoat", method = RequestMethod.GET)
	public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response, Model model) {	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		model.addAttribute("title", "Trang chủ");
		return new ModelAndView("redirect:/trang-chu");
	}
}

