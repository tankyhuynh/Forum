package com.ltk.forum.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "status")
@Data
public class Status {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "status_code")
	private String statusCode;
	
	@Column(name = "status_name")
	private String statusName;
	
	
	@OneToMany(mappedBy = "statusId")
	private List<PostDetail> postDetailList;
	
	@OneToMany(mappedBy = "statusId")
	private List<CommentDetail> commentDetailList;
}
