package com.ltk.forum.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
		
		List<Post> posts = postService.getAll();
		for (Post post : posts) {
			System.out.println(post.getId() + post.getTitle() + post.getTime());
		}
		
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
	
	@GetMapping("/tao-bai-viet")
	public ModelAndView createPost() {
		System.out.println("aaaa");
		ModelAndView mav = new ModelAndView("/frontend/pages/createpost");
		return mav;
	}
	
//	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
//    public String submit(@RequestParam("file") MultipartFile file, ModelMap modelMap) throws IllegalStateException, IOException {
//		System.out.println("CCC");
//		ModelAndView mav = new ModelAndView("post");
//		System.out.println(file.getOriginalFilename());
//    	File file2 = new File("C:\\Users\\ASUS\\Downloads\\New", file.getOriginalFilename());
//        file.transferTo(file2); 
//        modelMap.addAttribute("file", file);
//        return "post";
//    }
	
	@GetMapping("/{id}")
	public ModelAndView getOneById(@PathVariable("id") Long id) {
		Post post = postService.getOneById(id);
		System.out.println(post.getContent());
		ModelAndView mav = new ModelAndView("/frontend/pages/postdetail");
		mav.addObject("post", post);
		return mav;
	}
	

}
