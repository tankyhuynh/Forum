package com.ltk.forum.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.PostDetail;
import com.ltk.forum.services.PostService;

@Controller
@RequestMapping("/post")
public class PostController {

	
	@Autowired
	private PostService postService;

	public ModelAndView getAllByNullHistory() {
		postService.getAllByNullHistory();
		
		ModelAndView mav = new ModelAndView("post");
		return mav; 
	}
	
	
	public ModelAndView getAllByRootPostWithStatusIsDX() {
		List<Post> nullPosts = postService.getAllByNullHistory();
	
		//Bài viết gốc với trạng thái "Đã xóa"
		System.out.println("Post Details: ");
		for (Post post : nullPosts) {
			boolean check = false;
			for (PostDetail child : post.getPostDetailList()) {
				if (child.getStatusId().getStatusCode().equals("DX")) {
					check = true;
				}
			}
			if (check) {
				continue;
			}
			else System.out.println(post.getId()+ " " + post.getTitle());
		}
		ModelAndView mav = new ModelAndView("post");
		return mav; 
	}
	
	
}
