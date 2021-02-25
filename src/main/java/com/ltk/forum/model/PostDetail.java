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
@Table(name = "post_detail")
public class PostDetail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "time")
	private Timestamp time;
	


	@ManyToOne
	@JoinColumn(name = "status_id", nullable = false)
	private Status statusId;
	
	
	@ManyToOne
	@JoinColumn(name = "post_id", nullable = false)
	private Post postId;
}
