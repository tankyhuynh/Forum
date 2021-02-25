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
@Table(name = "role")
@Data
public class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", columnDefinition = "TINYINT")
	private Long id;
	@Column(name = "role_code",length = 20, nullable = false)
	private String roleCode;
	@Column(name = "role_name",length = 45, nullable = false)
	private String roleName;
	
	@OneToMany(mappedBy = "roleId")
	private List<User> userList;

}
