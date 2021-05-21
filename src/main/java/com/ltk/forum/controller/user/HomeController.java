package com.ltk.forum.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ltk.forum.dto.ICountPost;
import com.ltk.forum.model.Post;
import com.ltk.forum.repository.PostRepo;
import com.ltk.forum.services.PostService;

@Controller
public class HomeController {
	
	@Autowired
	PostService postService;

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView returnIntroPage() {
		ModelAndView mav = new ModelAndView("frontend/pages/introduction");
		mav.addObject("title", "Giới thiệu");
		return mav;
	}
	
	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView returnContactPage() {
		ModelAndView mav = new ModelAndView("frontend/pages/contact");
		mav.addObject("title", "Liên hệ");
		return mav;
	}
	
	@ResponseBody
	@GetMapping("/search/{content}")
	public List<Post> searchPost(@PathVariable("content") String content) {
		List<Post> result1 = postService.getAllByContent(content);
		return result1;
	}
	
	
	
}
