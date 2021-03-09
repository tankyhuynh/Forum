package com.ltk.forum.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value ="adminControllerOfWeb")
public class AdminController {


	// nhan url
	@RequestMapping(value = "/quan-tri-trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {	
		ModelAndView mav = new ModelAndView("backend/index");
		return mav;
	}
	

}