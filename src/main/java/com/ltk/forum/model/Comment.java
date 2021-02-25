package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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
	
	@Column(name = "time", nullable = false, columnDefinition = "TIMESTAMP")
	private Timestamp time;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private User userId;
	

	@ManyToOne
	@JoinColumn(name = "post_id", nullable = false)
	private Post postId;


	@ManyToOne
	@JoinColumn(name = "status_id", nullable = false)
	private Status statusId;
	

	@ManyToOne
	@JoinColumn(name="history_of_comment_id")
	private Comment historyOfCommentId;

	@OneToMany(mappedBy="historyOfCommentId")
	private List<Comment> historyOfCommentList;
	
	@ManyToOne
	@JoinColumn(name="child_of_comment_id")
	private Comment childOfCommentId;

	@OneToMany(mappedBy="childOfCommentId")
	private List<Comment> childOfCommentList;
	

}
