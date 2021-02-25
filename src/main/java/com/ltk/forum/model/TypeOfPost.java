package com.ltk.forum.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "type_of_post")
public class TypeOfPost {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "type_code")
	private String typeCode;
	
	@Column(name = "type_name")
	private String typeName;
	
	@OneToMany(mappedBy = "typeOfPostId")
	private List<Post> postList;
}
