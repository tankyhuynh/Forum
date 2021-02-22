package com.ltk.forum.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value ="userControllerOfWeb")
public class UserController {


	// nhan url
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {	
		ModelAndView mav = new ModelAndView("frontend/index");
		return mav;
	}
	

}

