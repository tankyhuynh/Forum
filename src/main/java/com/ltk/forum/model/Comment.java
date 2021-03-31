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

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;


@Entity
@Table(name = "comment")
@Data
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "content", nullable = false, columnDefinition = "TEXT")
	private String content;
	
	@CreatedDate
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@Column(name = "time", nullable = false, columnDefinition = "TIMESTAMP")
	private Timestamp time;
	
	@CreatedBy
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id", nullable = false)
	private User userId;
	

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "post_id", nullable = false)
	private Post postId;


	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "status_id", nullable = false)
	@JsonIgnore
	private Status statusId;
	

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="history_of_comment_id")
	private Comment historyOfCommentId;

	@OneToMany(mappedBy="historyOfCommentId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JsonIgnore
	private List<Comment> historyOfCommentList;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="child_of_comment_id")
	@JsonBackReference
	private Comment childOfCommentId;

	@OneToMany(mappedBy="childOfCommentId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JsonManagedReference
	private List<Comment> childOfCommentList;
	

}
