package com.ltk.forum.services;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ltk.forum.model.User;
import com.ltk.forum.repository.UserRepo;

@Service
public class UserService {

	@Autowired
	private UserRepo userRepo;
	
	@Transactional
	public List<User> getAllPersons() {
		return (List<User>) userRepo.findAll();
	}
	
}
