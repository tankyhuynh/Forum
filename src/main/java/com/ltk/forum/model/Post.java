package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
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

import com.fasterxml.jackson.annotation.JsonIgnore;

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
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id", nullable = false)
	private User userId;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "type_of_post_id", nullable = false)
	private TypeOfPost typeOfPostId;
	

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="history_of_post_id")
	private Post historyOfPostId;
	
	@OneToMany(mappedBy="historyOfPostId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Post> historyOfPostList;
	
	@OneToMany(mappedBy = "postId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JsonIgnore
	private List<Report> reportList;
	
	@OneToMany(mappedBy = "postId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JsonIgnore
	private List<Comment> commentList;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "status_id", nullable = false)
	private Status statusId;
	
}
