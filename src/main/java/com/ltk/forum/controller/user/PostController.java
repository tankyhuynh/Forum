package com.ltk.forum.controller.user;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
import com.ltk.forum.dto.MyUser;
import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.Report;
import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.PostRepo;
import com.ltk.forum.services.CommentService;
import com.ltk.forum.services.PostService;
import com.ltk.forum.services.ReportService;
import com.ltk.forum.services.StatusService;
import com.ltk.forum.services.TypeOfPostService;
import com.ltk.forum.services.TypeOfReportService;
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
	@Autowired
	private TypeOfReportService typeOfReportService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private PostRepo postRepo;

	@GetMapping
	public ModelAndView getAllByNullHistory() {
		List<Post> posts = postService.getAllSortBy("time", "desc");
		List<TypeOfPost> typeOfPost = typeOfPostService.getAll();	
		ModelAndView mav = new ModelAndView("frontend/pages/post");
		Pageable pageable = PageRequest.of(0, 10);
		mav.addObject("rankList",postRepo.rank(pageable));
		mav.addObject("postList", posts);
		mav.addObject("typeOfPostList", typeOfPost);
		mav.addObject("title", "Bài viết");
		mav.addObject("typeOfReportList",typeOfReportService.getAll());
		return mav;
	}
	
	@GetMapping("/the-loai/{id}")
	public ModelAndView getAllByTypeOfPost(@PathVariable("id") Long id) {
		List<Post> posts = postService.getAllByTypeOfPostId(typeOfPostService.getOneById(id));
		List<TypeOfPost> typeOfPost = typeOfPostService.getAll();	
		ModelAndView mav = new ModelAndView("/frontend/pages/post");
		mav.addObject("postList", posts);
		mav.addObject("typeOfPostList", typeOfPost);
		mav.addObject("title", "Bài viết");
		mav.addObject("typeOfReportList",typeOfReportService.getAll());
		return mav;
	}

	public ModelAndView getAllByRootPostWithStatusIsDX() {
		ModelAndView mav = new ModelAndView("post");
		mav.addObject("title", "Bài viết");
		return mav;
	}
	@ResponseBody
	@PostMapping(value = "/uploadFile")
	public String submit(@RequestParam("upload") MultipartFile file, ModelMap modelMap, HttpSession session) throws IllegalStateException, IOException {
	    modelMap.addAttribute("file", file);
	    String rootDirectory = session.getServletContext().getRealPath("/");
	    file.transferTo(new File(rootDirectory+"/uploads/"+file.getOriginalFilename()));
	    HashMap<String,String> payload = new HashMap<>();
	    payload.put("uploaded","1");
	    payload.put("fileName",file.getOriginalFilename());
	    payload.put("url", "/Forum/uploads/"+file.getOriginalFilename());
	    String json = new ObjectMapper().writeValueAsString(payload);
	    return json;
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
	public ModelAndView saveComment( String content, Long childOfCommentId, Long postId) {
		MyUser user = SecurityUtils.getPrincipal();
		ModelAndView mav = new ModelAndView("redirect:/bai-viet/"+postId);
		Comment comment = new Comment();
		comment.setContent(content);
		comment.setUserId(userService.getOneById(user.getId()));
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
		commentHis.setUserId(userService.getOneById(user.getId()));
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
	
	
	@PostMapping("/them-bao-cao")
	public ModelAndView saveReport(Long postId, Long typeOfReportId) {
		MyUser user = SecurityUtils.getPrincipal();
		System.out.println(user.toString());
		ModelAndView mav = new ModelAndView("redirect:/bai-viet");
		Report report = new Report();
		report.setPostId(postService.getOneById(postId));
		report.setUserId(userService.getOneById(user.getId()));
		report.setTypeOfReportId(typeOfReportService.getOneById(typeOfReportId));
		Date date = new Date();
		report.setTime(new Timestamp(date.getTime()));
		reportService.save(report);
		return mav;
	}
	
	
	@GetMapping("/api-binh-luan/{id}")
	@ResponseBody
	public List<Comment> api(@PathVariable("id") Long id ) throws JsonProcessingException {
		
		return commentService.getAllByNullHistoryOfComment(postService.getOneById(id));
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
