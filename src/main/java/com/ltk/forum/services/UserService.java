package com.ltk.forum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.repository.UserRepo;

@Service
public class UserService {

	@Autowired
	private UserRepo userRepo;
	
}
