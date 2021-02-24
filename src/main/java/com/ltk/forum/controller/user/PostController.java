package com.ltk.forum.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ltk.forum.model.Post;
import com.ltk.forum.services.PostService;

@Controller
@RequestMapping("/post")
public class PostController {

	@Autowired
	private PostService postService;
	
	public List<Post> getAllByHistoryIsNull() {
		return postService.getAllByHistory();
	}
	
}
