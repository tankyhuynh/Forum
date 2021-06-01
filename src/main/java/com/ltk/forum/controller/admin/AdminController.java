package com.ltk.forum.controller.admin;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ltk.forum.dto.BaseDTO;
import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.Report;
import com.ltk.forum.model.Role;
import com.ltk.forum.model.Status;
import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.model.TypeOfReport;
import com.ltk.forum.model.User;
import com.ltk.forum.services.CommentService;
import com.ltk.forum.services.PostService;
import com.ltk.forum.services.ReportService;
import com.ltk.forum.services.RoleService;
import com.ltk.forum.services.StatusService;
import com.ltk.forum.services.TypeOfPostService;
import com.ltk.forum.services.TypeOfReportService;
import com.ltk.forum.services.UserService;

@Controller(value = "adminControllerOfWeb")
@RequestMapping(value = "/quan-tri")
public class AdminController {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private TypeOfPostService typeOfPostService;
	@Autowired
	private TypeOfReportService typeOfReportService;
	@Autowired
	private StatusService statusService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private PostService postService;
	@Autowired
	CommentService commentService;
	

	private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	@GetMapping
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("backend/index");
		BaseDTO dto = new BaseDTO();
		dto.setTotalPost(postService.getNumberOfPost());
		dto.setTotalComment(commentService.getNumberOfComment());
		dto.setTotalReport(reportService.getNumberOfReport());
		dto.setTotalUser(userService.getNumberOfUser());
		mav.addObject("total", dto);
		return mav;
	}

	// Cac controller cua nguoi dung
	@GetMapping("/nguoi-dung")
	public ModelAndView userHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/user/index");
		mav.addObject("userList", userService.getAll());
		return mav;
	}

	@GetMapping("/them-nguoi-dung")
	public ModelAndView addUserPage() {
		ModelAndView mav = new ModelAndView("/backend/pages/user/adduser");
		mav.addObject("roleList", roleService.getAll());	
		return mav;
	}

	@PostMapping("/them-nguoi-dung")
	public ModelAndView saveUser(@RequestParam String fullName, String username, String password, Boolean gender,
			String email, Long roleId) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/nguoi-dung");
		User user = new User();
		user.setFullName(fullName);
		user.setUsername(username);
		user.setPassword(encoder.encode(password));
		user.setGender(gender);
		user.setEmail(email);
		user.setRoleId(roleService.getOneById(roleId));
		userService.save(user);
		return mav;
	}

	@GetMapping("/sua-nguoi-dung/{id}")
	public ModelAndView editUserPage(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("/backend/pages/user/edituser");
		mav.addObject("user", userService.getOneById(id));
		mav.addObject("roleList", roleService.getAll());
		return mav;
	}

	@PostMapping("/sua-nguoi-dung/{id}")
	public ModelAndView editUser(@RequestParam String fullName, Boolean gender,
			String email, Long roleId, @PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/nguoi-dung");
		User user = userService.getOneById(id);
		user.setFullName(fullName);
		user.setGender(gender);
		user.setEmail(email);
		user.setRoleId(roleService.getOneById(roleId));
		userService.update(id, user);
		return mav;
	}

	@GetMapping("/xoa-nguoi-dung/{id}")
	public ModelAndView deleteUser(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/nguoi-dung");
		userService.delete(id);
		return mav;
	}

	
	// Cac controller cua vai tro
	@GetMapping("/vai-tro")
	public ModelAndView roleHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/role/index");
		mav.addObject("roleList", roleService.getAll());
		return mav;
	}

	@GetMapping("/them-vai-tro")
	public ModelAndView addRolePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/role/addrole");
		return mav;
	}

	@PostMapping("/them-vai-tro")
	public ModelAndView saveRole(@RequestParam String roleName, String roleCode) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/vai-tro");
		Role role = new Role();
		role.setRoleCode(roleCode);
		role.setRoleName(roleName);
		roleService.save(role);
		return mav;
	}

	@GetMapping("/sua-vai-tro/{id}")
	public ModelAndView editRolePage(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("/backend/pages/role/editrole");
		mav.addObject("role", roleService.getOneById(id));
		return mav;
	}

	@PostMapping("/sua-vai-tro/{id}")
	public ModelAndView editRole(@RequestParam String roleName, String roleCode, @PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/vai-tro");
		Role role = new Role();
		role.setRoleCode(roleCode);
		role.setRoleName(roleName);
		roleService.update(id,role);
		return mav;
	}
	
	@GetMapping("/xoa-vai-tro/{id}")
	public ModelAndView deleteRole(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/vai-tro");
		roleService.delete(id);
		return mav;
	}
	
	
	// Cac controller cua the loai bao cao
	@GetMapping("/the-loai-bao-cao")
	public ModelAndView TypeOfReportHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/typeofreport/index");
		mav.addObject("typeOfReportList", typeOfReportService.getAll());
		return mav;
	}

	@GetMapping("/them-the-loai-bao-cao")
	public ModelAndView addTypeReportPage() {
		ModelAndView mav = new ModelAndView("/backend/pages/typeofreport/addtypeofreport");
		return mav;
	}

	@PostMapping("/them-the-loai-bao-cao")
	public ModelAndView saveTypeOfReport(@RequestParam String typeName, String typeCode) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/the-loai-bao-cao");
		TypeOfReport typeOfReport = new TypeOfReport();
		typeOfReport.setTypeCode(typeCode);
		typeOfReport.setTypeName(typeName);
		typeOfReportService.save(typeOfReport);
		return mav;
	}
	
	@GetMapping("/sua-the-loai-bao-cao/{id}")
	public ModelAndView editTypeReportPage(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("/backend/pages/typeofreport/edittypeofreport");
		mav.addObject("typeofreport", typeOfReportService.getOneById(id));
		return mav;
	}

	@PostMapping("/sua-the-loai-bao-cao/{id}")
	public ModelAndView editTypeOfReport(@RequestParam String typeName, String typeCode, @PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/the-loai-bao-cao");
		TypeOfReport typeOfReport = new TypeOfReport();
		typeOfReport.setTypeCode(typeCode);
		typeOfReport.setTypeName(typeName);
		typeOfReportService.update(id,typeOfReport);
		return mav;
	}
	
	@GetMapping("/xoa-the-loai-bao-cao/{id}")
	public ModelAndView deleteTypeOfReport(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/the-loai-bao-cao");
		typeOfReportService.delete(id);
		return mav;
	}
	
	
	// Cac controller cua the loai bai viet
	@GetMapping("/the-loai-bai-viet")
	public ModelAndView typeOfPostHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/typeofpost/index");
		mav.addObject("typeOfPostList", typeOfPostService.getAll());
		return mav;
	}

	@GetMapping("/them-the-loai-bai-viet")
	public ModelAndView addTypePostPage() {
		ModelAndView mav = new ModelAndView("/backend/pages/typeofpost/addtypeofpost");
		return mav;
	}
	
	@PostMapping("/them-the-loai-bai-viet")
	public ModelAndView saveTypeOfPost(@RequestParam String typeName, String typeCode) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/the-loai-bai-viet");
		TypeOfPost typeOfPost = new TypeOfPost();
		typeOfPost.setTypeCode(typeCode);
		typeOfPost.setTypeName(typeName);
		typeOfPostService.save(typeOfPost);
		return mav;
	}
	
	@GetMapping("/sua-the-loai-bai-viet/{id}")
	public ModelAndView editTypeOfPostPage(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("/backend/pages/typeofpost/edittypeofpost");
		mav.addObject("typeofpost", typeOfPostService.getOneById(id));
		return mav;
	}

	@PostMapping("/sua-the-loai-bai-viet/{id}")
	public ModelAndView editTypeOfPost(@RequestParam String typeName, String typeCode, @PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/the-loai-bai-viet");
		TypeOfPost typeOfPost = new TypeOfPost();
		typeOfPost.setTypeCode(typeCode);
		typeOfPost.setTypeName(typeName);
		typeOfPostService.update(id,typeOfPost);
		return mav;
	}
	
	@GetMapping("/xoa-the-loai-bai-viet/{id}")
	public ModelAndView deleteTypeOfPost(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/the-loai-bai-viet");
		typeOfPostService.delete(id);
		return mav;
	}
	

	// Cac controller cua them trang thai
	@GetMapping("/trang-thai")
	public ModelAndView statusHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/status/index");
		mav.addObject("statusList", statusService.getAll());
		return mav;
	}

	@GetMapping("/them-trang-thai")
	public ModelAndView addStatusPage() {
		ModelAndView mav = new ModelAndView("/backend/pages/status/addstatus");
		return mav;
	}

	@PostMapping("/them-trang-thai")
	public ModelAndView saveStatus(@RequestParam String statusName, String statusCode) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/trang-thai");
		Status status = new Status();
		status.setStatusCode(statusCode);
		status.setStatusName(statusName);
		statusService.save(status);
		return mav;
	}
	
	@GetMapping("/sua-trang-thai/{id}")
	public ModelAndView editStatusPage(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("/backend/pages/status/editstatus");
		mav.addObject("status", statusService.getOneById(id));
		return mav;
	}

	@PostMapping("/sua-trang-thai/{id}")
	public ModelAndView editStatus(@RequestParam String statusCode, String statusName, @PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/trang-thai");
		Status status = new Status();
		status.setStatusCode(statusCode);
		status.setStatusName(statusName);
		statusService.update(id,status);
		return mav;
	}
	
	@GetMapping("/xoa-trang-thai/{id}")
	public ModelAndView deleteStatus(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/trang-thai");
		statusService.delete(id);
		return mav;
	}

	
	// Cac controller cua bao cao
	@GetMapping("/bao-cao")
	public ModelAndView reportHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/report/index");
		mav.addObject("reportList", reportService.getAll());
		return mav;
	}
	
	@GetMapping("/xoa-bao-cao/{id}")
	public ModelAndView deleteReport(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/bao-cao");
		reportService.delete(id);
		return mav;
	}

	
	// Cac controller cua bai viet
	@GetMapping("/bai-viet")
	public ModelAndView postHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/post/index");
		mav.addObject("postList", postService.getAllByNullHistory());
		return mav;
	}

//	@GetMapping("/them-bai-viet")
//	public ModelAndView addPostPage() {
//		ModelAndView mav = new ModelAndView("/backend/pages/post/addpost");
//		mav.addObject("typeOfPostList", typeOfPostService.getAll());
//		return mav;
//	}
//
//	@PostMapping("/them-bai-viet")
//	public ModelAndView savePost(@RequestParam Long userId, String content, Long typeOfPostId, String title) {
//		ModelAndView mav = new ModelAndView("redirect:/quan-tri/bai-viet");
//		Post post = new Post();
//		post.setContent(content);
//		post.setTitle(title);
//		post.setUserId(userService.getOneById(userId));
//		Date date = new Date();
//		post.setTime(new Timestamp(date.getTime()));
//		post.setStatusId(statusService.getOneByStatusCode("DT"));
//		post.setTypeOfPostId(typeOfPostService.getOneById(typeOfPostId));
//		postService.save(post);
//		Post postHis = new Post();
//		postHis.setContent(content);
//		postHis.setTitle(title);
//		postHis.setUserId(userService.getOneById(userId));
//		postHis.setTime(new Timestamp(date.getTime()));
//		postHis.setStatusId(statusService.getOneByStatusCode("DT"));
//		postHis.setTypeOfPostId(typeOfPostService.getOneById(typeOfPostId));
//		postHis.setHistoryOfPostId(post);
//		postService.save(postHis);
//		return mav;
//	}
//
//	@GetMapping("/sua-bai-viet/{id}")
//	public ModelAndView editPostPage(@PathVariable Long id) {
//		ModelAndView mav = new ModelAndView("/backend/pages/post/editpost");
//		mav.addObject("post", postService.getOneById(id));
//		mav.addObject("typeOfPostList", typeOfPostService.getAll());
//		return mav;
//	}
//	
//	@PostMapping("/sua-bai-viet/{id}")
//	public ModelAndView editPost(@RequestParam Long userId, String content, Long typeOfPostId, String title,@PathVariable Long id) {
//		ModelAndView mav = new ModelAndView("redirect:/quan-tri/bai-viet");
//		Post post = new Post();
//		post.setContent(content);
//		post.setTitle(title);
//		post.setUserId(userService.getOneById(userId));
//		Date date = new Date();
//		post.setTime(new Timestamp(date.getTime()));
//		post.setStatusId(statusService.getOneByStatusCode("DS"));
//		post.setTypeOfPostId(typeOfPostService.getOneById(typeOfPostId));
//		postService.update(id,post);
//		Post postHis = new Post();
//		postHis.setContent(content);
//		postHis.setTitle(title);
//		postHis.setUserId(userService.getOneById(userId));
//		postHis.setTime(new Timestamp(date.getTime()));
//		postHis.setStatusId(statusService.getOneByStatusCode("DS"));
//		postHis.setTypeOfPostId(typeOfPostService.getOneById(typeOfPostId));
//		postHis.setHistoryOfPostId(post);
//		postService.save(postHis);
//		return mav;
//	}
	
	@GetMapping("/xoa-bai-viet/{id}")
	public ModelAndView deletePost(@PathVariable Long id) {
		ModelAndView mav = new ModelAndView("redirect:/quan-tri/bai-viet");
		postService.delete(id);
		return mav;
	}
	
	
	// Cac controller cua binh luan
	@GetMapping("/binh-luan")
	public ModelAndView commentHomePage() {
		ModelAndView mav = new ModelAndView("/backend/pages/comment/index");
		mav.addObject("commentList", commentService.getAll());
		return mav;
	}

//	@GetMapping("/them-binh-luan")
//	public ModelAndView addCommentPage() {
//		ModelAndView mav = new ModelAndView("/backend/pages/comment/addcomment");
//		return mav;
//	}
//
//	@PostMapping("/them-binh-luan")
//	public ModelAndView saveComment(@RequestParam Long userId, String content, Long childOfCommentId, Long postId) {
//		ModelAndView mav = new ModelAndView("redirect:/quan-tri/binh-luan");
//		Comment comment = new Comment();
//		comment.setContent(content);
//		comment.setUserId(userService.getOneById(userId));
//		comment.setPostId(postService.getOneById(postId));
//		comment.setStatusId(statusService.getOneByStatusCode("DT"));
//		Date date = new Date();
//		comment.setTime(new Timestamp(date.getTime()));
//		if (childOfCommentId != null) {
//			comment.setChildOfCommentId(commentService.getOneById(childOfCommentId));
//		}
//		commentService.save(comment);
//		Comment commentHis = new Comment();
//		commentHis.setContent(content);
//		commentHis.setUserId(userService.getOneById(userId));
//		commentHis.setPostId(postService.getOneById(postId));
//		commentHis.setStatusId(statusService.getOneByStatusCode("DT"));
//		commentHis.setTime(new Timestamp(date.getTime()));
//		if (childOfCommentId != null) {
//			comment.setChildOfCommentId(commentService.getOneById(childOfCommentId));
//		}
//		commentHis.setHistoryOfCommentId(comment);
//		commentService.save(commentHis);
//		return mav;
//	}
//	
//	@GetMapping("/sua-binh-luan/{id}")
//	public ModelAndView editCommentPage(@PathVariable Long id) {
//		ModelAndView mav = new ModelAndView("/backend/pages/comment/editcomment");
//		mav.addObject("comment", commentService.getOneById(id));
//		return mav;
//	}
//	
//	@PostMapping("/sua-binh-luan/{id}")
//	public ModelAndView saveComment(@RequestParam Long userId, String content, Long childOfCommentId, Long postId,@PathVariable Long id) {
//		ModelAndView mav = new ModelAndView("redirect:/quan-tri/binh-luan");
//		Comment comment = new Comment();
//		comment.setContent(content);
//		comment.setUserId(userService.getOneById(userId));
//		comment.setPostId(postService.getOneById(postId));
//		comment.setStatusId(statusService.getOneByStatusCode("DS"));
//		Date date = new Date();
//		comment.setTime(new Timestamp(date.getTime()));
//		if (childOfCommentId != null) {
//			comment.setChildOfCommentId(commentService.getOneById(childOfCommentId));
//		}
//		commentService.update(id,comment);
//		Comment commentHis = new Comment();
//		commentHis.setContent(content);
//		commentHis.setUserId(userService.getOneById(userId));
//		commentHis.setPostId(postService.getOneById(postId));
//		commentHis.setStatusId(statusService.getOneByStatusCode("DS"));
//		commentHis.setTime(new Timestamp(date.getTime()));
//		if (childOfCommentId != null) {
//			comment.setChildOfCommentId(commentService.getOneById(childOfCommentId));
//		}
//		commentHis.setHistoryOfCommentId(comment);
//		commentService.save(commentHis);
//		return mav;
//	}
//	
//	@GetMapping("/xoa-binh-luan/{id}")
//	public ModelAndView deleteComment(@PathVariable Long id) {
//		ModelAndView mav = new ModelAndView("redirect:/quan-tri/binh-luan");
//		commentService.delete(id);
//		return mav;
//	}
}