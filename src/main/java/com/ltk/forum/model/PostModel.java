package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "posts")
public class PostModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private Timestamp time;
	private String title;
	private String content;

//	The Loai
	@ManyToOne
	@JoinColumn(name = "type_of_post_id", nullable = false)
	private TypeOfPostModel typeOfPost;
	
//	Sau này chỉnh sửa cần tìm Bài viết gốc để add vô lịch sử chỉnh sửa
//	Lịch sử chỉnh sửa của bài viết con sẽ ko chứa gì trong lịch sử chỉnh sửa
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="history_post_id")
	private PostModel postModelModify;

	@OneToMany(mappedBy="postModelModify")
	private List<CommentModel> modifyHistory = new ArrayList<CommentModel>();
	
	@OneToMany(mappedBy = "reportID")
	private List<ReportModel> reportList;
	
	@OneToMany(mappedBy = "postId")
	private List<CommentModel> commentList;
	
//	Trang Thai
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "posts_status", 
				joinColumns = @JoinColumn(name = "post_id"),
				inverseJoinColumns = @JoinColumn(name = "status_id"))
	private List<StatusModel> postStatus;
	
	
	
}
