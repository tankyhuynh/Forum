package com.ltk.forum.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
	@Column(name = "id", columnDefinition = "TINYINT")
	private Long id;
	
	@Column(name = "status_code", length = 10, nullable = false)
	private String statusCode;
	
	@Column(name = "status_name", length = 20, nullable = false)
	private String statusName;
	
	
	@OneToMany(mappedBy = "statusId", fetch = FetchType.LAZY)
	private List<Post> postList;
	
	@OneToMany(mappedBy = "statusId", fetch = FetchType.LAZY)
	private List<Comment> commentList;
}
