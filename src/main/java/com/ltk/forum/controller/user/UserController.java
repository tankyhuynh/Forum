package com.ltk.forum.controller.user;

import java.util.List;import org.jboss.logging.annotations.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.PostDetail;
import com.ltk.forum.model.User;
import com.ltk.forum.services.PostDetailService;
import com.ltk.forum.services.PostService;
import com.ltk.forum.services.UserService;

@Controller(value ="userControllerOfWeb")
public class UserController {

	@Autowired
	private UserService user;
	
	@Autowired
	private PostService postService;
	
	@Autowired
	private PostDetailService postDetailService;
	
	// nhan url
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {	

		ModelAndView mav = new ModelAndView("frontend/index");
		return mav;
	}
	

}

