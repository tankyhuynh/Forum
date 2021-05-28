package com.ltk.forum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Role;
import com.ltk.forum.model.User;


public interface UserRepo extends JpaRepository<User, Long> {

	User findOneById(Long id);
	User findOneByUsername(String username);
	User findOneByFullName(String fullName);
	User findOneByEmail(String email);
	
	List<User> findAllByFullName(String fullName);
	List<User> findAllByGender(String gender);
	List<User> findAllByRoleId(Role roleId);

	long count();
	
	
}
