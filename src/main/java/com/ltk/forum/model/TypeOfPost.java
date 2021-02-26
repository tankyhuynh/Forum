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
@Table(name = "type_of_post")
@Data
public class TypeOfPost {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", columnDefinition = "TINYINT")
	private Long id;
	
	@Column(name = "type_code", length = 20, nullable = false)
	private String typeCode;
	
	@Column(name = "type_name", length = 45, nullable = false)
	private String typeName;
	
	@OneToMany(mappedBy = "typeOfPostId")
	private List<Post> postList;
}
