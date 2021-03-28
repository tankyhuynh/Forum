package com.ltk.forum.controller.user;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.model.User;
import com.ltk.forum.services.CommentService;
import com.ltk.forum.services.PostService;
import com.ltk.forum.services.StatusService;
import com.ltk.forum.services.TypeOfPostService;
import com.ltk.forum.services.UserService;
import com.ltk.forum.util.SecurityUtils;

@Controller
@RequestMapping("/bai-viet")
public class PostController {

	@Autowired
	private PostService postService;
	@Autowired
	private TypeOfPostService typeOfPostService;
	@Autowired 
	private UserService userService;
	@Autowired
	private StatusService statusService;

	@GetMapping
	public ModelAndView getAllByNullHistory() {
		List<Post> posts = postService.getAllSortBy("time", "desc");
		List<TypeOfPost> typeOfPost = typeOfPostService.getAll();	
		ModelAndView mav = new ModelAndView("frontend/pages/post");
		mav.addObject("postList", posts);
		mav.addObject("typeOfPostList", typeOfPost);
		mav.addObject("title", "Bài viết");
		return mav;
	}

	public ModelAndView getAllByRootPostWithStatusIsDX() {
		ModelAndView mav = new ModelAndView("post");
		mav.addObject("title", "Bài viết");
		return mav;
	}
	
	@GetMapping("/tao-bai-viet")
	public ModelAndView createPost() {
		ModelAndView mav = new ModelAndView("/frontend/pages/createpost");
		mav.addObject("typeOfPostList", typeOfPostService.getAll());
		return mav;
	}
	
	@PostMapping("/tao-bai-viet")
	public ModelAndView savePost(@RequestParam Long userId, String content, Long typeOfPostId, String title) {
		ModelAndView mav = new ModelAndView("redirect:/bai-viet");
		Post post = new Post();
		post.setContent(content);
		post.setTitle(title);
		post.setUserId(userService.getOneById(userId));
		Date date = new Date();
		post.setTime(new Timestamp(date.getTime()));
		post.setStatusId(statusService.getOneByStatusCode("DT"));
		post.setTypeOfPostId(typeOfPostService.getOneById(typeOfPostId));
		postService.save(post);
		Post postHis = new Post();
		postHis.setContent(content);
		postHis.setTitle(title);
		postHis.setUserId(userService.getOneById(userId));
		postHis.setTime(new Timestamp(date.getTime()));
		postHis.setStatusId(statusService.getOneByStatusCode("DT"));
		postHis.setTypeOfPostId(typeOfPostService.getOneById(typeOfPostId));
		postHis.setHistoryOfPostId(post);
		postService.save(postHis);
		return mav;
	}
	
	@Autowired
	CommentService commentService;
	
	@PostMapping("/them-binh-luan")
	@ResponseBody
	public ModelAndView saveComment(@RequestParam Long userId, String content, Long childOfCommentId, Long postId) {
		
		System.out.println(userId + content + postId);
		ModelAndView mav = new ModelAndView("redirect:/bai-viet/"+postId);
		Comment comment = new Comment();
		comment.setContent(content);
		comment.setUserId(userService.getOneById(userId));
		comment.setPostId(postService.getOneById(postId));
		comment.setStatusId(statusService.getOneByStatusCode("DT"));
		Date date = new Date();
		comment.setTime(new Timestamp(date.getTime()));
		if (childOfCommentId != null) {
			comment.setChildOfCommentId(commentService.getOneById(childOfCommentId));
		}
		commentService.save(comment);
		Comment commentHis = new Comment();
		commentHis.setContent(content);
		commentHis.setUserId(userService.getOneById(userId));
		commentHis.setPostId(postService.getOneById(postId));
		commentHis.setStatusId(statusService.getOneByStatusCode("DT"));
		commentHis.setTime(new Timestamp(date.getTime()));
		if (childOfCommentId != null) {
			comment.setChildOfCommentId(commentService.getOneById(childOfCommentId));
		}
		commentHis.setHistoryOfCommentId(comment);
		commentService.save(commentHis);
		return mav;
		//return commentService.getAllByPostId(postService.getOneById(postId));
	}
	
	
	@GetMapping("/api-binh-luan/{id}")
	@ResponseBody
	public List<Comment> api(@PathVariable("id") Long id ) throws JsonProcessingException {
		
		return commentService.getAllByPostId(postService.getOneById(id));
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
		
		mav.addObject("title", "Chi tiết bài viết");
		return mav;
	}
	

}
