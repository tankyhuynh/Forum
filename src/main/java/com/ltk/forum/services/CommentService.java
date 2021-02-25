package com.ltk.forum.services;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.Status;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.CommentRepo;

@Service
public class CommentService {

	@Autowired
	private CommentRepo commentRepo;
	
	public List<Comment> getAll() {
		return commentRepo.findAll();
	}
	
	public Comment getOneById(Long id) {
		return commentRepo.findOneById(id);
	}
	
	//*
	public Comment getOneByUserId(User userId) {
		return commentRepo.findOneByUserId(userId);
	}
	
	public Comment getOneByPostId(Post postId) {
		return commentRepo.findOneByPostId(postId);
	}
	
	public List<Comment> getAllByTimeBetween(Timestamp startTime, Timestamp endTime) {
		return commentRepo.findAllByTimeBetween(startTime, endTime);
	}
	
	public Comment save(Comment comment) {
		return commentRepo.save(comment);
	}
	
	public void saveAll(List<Comment> comments) {
		for (Comment comment : comments) {
			commentRepo.save(comment);
		}
	}
	
	public Comment update(Long id, Comment comment) {
		comment.setId(id);
		return commentRepo.save(comment);
	}
	
	public void delete(Long id) {
		commentRepo.delete(id);
	}
	
	public void deleteAll() {
		commentRepo.deleteAll();
	}
	
	
	
	
	
	
	
	

	
}
