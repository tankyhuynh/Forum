package com.ltk.forum.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.services.PostService;
import com.ltk.forum.services.TypeOfPostService;

@Controller
@RequestMapping("/bai-viet")
public class PostController {

	@Autowired
	private PostService postService;
	@Autowired
	private TypeOfPostService typeOfPostService;

	@GetMapping
	public ModelAndView getAllByNullHistory() {

		System.out.println("List posts: ");
		List<Post> posts = postService.getAllSortBy("time", "desc");
		List<TypeOfPost> typeOfPost = typeOfPostService.getAll();

		ModelAndView mav = new ModelAndView("frontend/pages/post");
		mav.addObject("postList", posts);
		mav.addObject("typeOfPostList", typeOfPost);
		return mav;
	}

	public ModelAndView getAllByRootPostWithStatusIsDX() {
		ModelAndView mav = new ModelAndView("post");
		return mav;
	}
	
	@GetMapping("/{id}")
	public ModelAndView getOneById(@PathVariable("id") Long id) {
		Post post = postService.getOneById(id);
		
		ModelAndView mav = new ModelAndView("/frontend/pages/postdetail");
		mav.addObject("post", post);
		return mav;
	}
	

}
