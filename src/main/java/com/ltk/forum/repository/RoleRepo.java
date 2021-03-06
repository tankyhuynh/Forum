package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Role;


public interface RoleRepo extends JpaRepository<Role, Long> {

	Role findOneById(Long id);
	Role findOneByRoleCode(String roleCode);
	Role findOneByRoleName(String roleName);
	
}
