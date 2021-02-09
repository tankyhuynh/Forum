package com.ltk.forum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.repository.PostRepo;

@Service
public class PostService {

	@Autowired
	private PostRepo postRepo;
	
}
