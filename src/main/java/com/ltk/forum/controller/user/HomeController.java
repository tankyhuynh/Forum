package com.ltk.forum.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView returnIntroPage() {
		ModelAndView mav = new ModelAndView("frontend/pages/introduction");
		
		return mav;
	}
	
	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView returnContactPage() {
		ModelAndView mav = new ModelAndView("frontend/pages/contact");
		
		return mav;
	}
	
}
