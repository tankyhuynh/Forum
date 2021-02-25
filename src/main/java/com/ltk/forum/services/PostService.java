package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Post;
import com.ltk.forum.repository.PostRepo;
import com.ltk.forum.repository.StatusRepo;

@Service
public class PostService {

	@Autowired
	private PostRepo postRepo;
	
	@Autowired
	private StatusRepo statusRepo;
	
	public List<Post> getAll() {
		return postRepo.findAll();
	}
	
	public List<Post> getAllByNullHistory() {
		
		return postRepo.findAllByHistoryOfPostIdIsNull();
	}
	
	public Post getOneById(Long id) {
		return postRepo.findOneById(id);
	}
	
}
