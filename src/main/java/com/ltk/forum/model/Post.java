package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "post")
@Data
public class Post {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "title",length = 200, nullable = false)
	private String title;
	
	@Column(name = "content", columnDefinition ="TEXT" , nullable = false)
	private String content;
	
	@Column(name = "time", nullable = false, columnDefinition = "TIMESTAMP")
	private Timestamp time;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private User userId;
	
	@ManyToOne
	@JoinColumn(name = "type_of_post_id", nullable = false)
	private TypeOfPost typeOfPostId;
	

	@ManyToOne
	@JoinColumn(name="history_of_post_id")
	private Post historyOfPostId;
	
	@OneToMany(mappedBy="historyOfPostId")
	private List<Post> historyOfPostList;
	
	@OneToMany(mappedBy = "postId")
	private List<Report> reportList;
	
	@OneToMany(mappedBy = "postId")
	private List<Comment> commentList;
	
	@ManyToOne
	@JoinColumn(name = "status_id", nullable = false)
	private Status statusId;
	
}
