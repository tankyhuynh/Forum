package com.ltk.forum.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "comment_detail")
public class CommentDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "time")
	private Timestamp time;
	


	@ManyToOne
	@JoinColumn(name = "status_id", nullable = false)
	private Status statusId;
	
	
	@ManyToOne
	@JoinColumn(name = "comment_id", nullable = false)
	private Comment commentId;
}
