package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Comment;
import com.ltk.forum.repository.CommentRepo;

@Service
public class CommentService {

	@Autowired
	private CommentRepo commentRepo;
	
	

	
}
