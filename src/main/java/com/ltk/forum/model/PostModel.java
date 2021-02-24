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
	private String title;
	private String content;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private UserModel userId;


	@ManyToOne
	@JoinColumn(name = "type_of_post_id", nullable = false)
	private TypeOfPostModel typeOfPostId;
	

	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="history_of_post_id")
	private PostModel historyOfPostId;
	
	@OneToMany(mappedBy="historyOfPostId")
	private List<PostModel> historyOfPostList;
	
	@OneToMany(mappedBy = "postId")
	private List<ReportModel> reportList;
	
	@OneToMany(mappedBy = "postId")
	private List<CommentModel> commentList;
	
	@OneToMany(mappedBy = "postId")
	private List<PostDetailModel> postDetailList;
	
		
	
}
