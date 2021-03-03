package com.ltk.forum.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	//@Transactional(readOnly = true)
	public ModelAndView getAllByNullHistory() {
//		postService.getAllByNullHistory();
		
		System.out.println("List posts: ");
		List<Post> posts = postService.getAllSortBy("time", "desc");
		List<TypeOfPost> typeOfPost = typeOfPostService.getAll();
		
//		System.out.println(posts.get(0).getContent());

		ModelAndView mav = new ModelAndView("frontend/pages/post");
		mav.addObject("postList", posts);
		mav.addObject("typeOfPostList",typeOfPost);
		return mav; 
	}
	
	
	public ModelAndView getAllByRootPostWithStatusIsDX() {
//		List<Post> nullPosts = postService.getAllByNullHistory();
//	
//		//Bài viết gốc với trạng thái "Đã xóa"
//		System.out.println("Post Details: ");
//		for (Post post : nullPosts) {
//			boolean check = false;
//			for (PostDetail child : post.getPostDetailList()) {
//				if (child.getStatusId().getStatusCode().equals("DX")) {
//					check = true;
//				}
//			}
//			if (check) {
//				continue;
//			}
//			else System.out.println(post.getId()+ " " + post.getTitle());
//		}
		ModelAndView mav = new ModelAndView("post");
		return mav; 
	}
	
	
}
