package com.ltk.forum.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ltk.forum.model.User;
import com.ltk.forum.services.UserService;

import lombok.Getter;

@Controller(value ="userControllerOfWeb")
public class UserController {

	@Autowired
	private UserService user;
	// nhan url
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {	
		List<User> ul = user.getAllPersons();
		for(int i=0;i<ul.size();i++) {
			System.out.println(ul.get(i).getFullName());
		}
		
		ModelAndView mav = new ModelAndView("frontend/index");
		return mav;
	}
	

}

