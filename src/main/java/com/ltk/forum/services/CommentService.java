package com.ltk.forum.services;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.CommentRepo;

@Service
public class CommentService {

	@Autowired
	private CommentRepo commentRepo;
	
	public List<Comment> getAll() {
		return commentRepo.findAll();
	}
	
	public List<Comment> getAllByPostId(Post postId){
		return commentRepo.findAllByPostId(postId);
	}
	
	public List<Comment> getAllByNullHistoryOfComment(){
		return commentRepo.findAllByHistoryOfCommentIdIsNull();
	}
	
	public List<Comment> getAllByNullHistoryOfComment(Post postId){
		return commentRepo.findAllByHistoryOfCommentIdIsNullAndChildOfCommentIdIsNullAndPostId(postId);
	}
	
	public List<Comment> getAllSortBy(String fieldName, String typeOfSort) {
		typeOfSort = typeOfSort.toLowerCase();
		
		return (typeOfSort.equals("asc")) ? commentRepo.findAll(Sort.by(Sort.Direction.ASC, fieldName)) : commentRepo.findAll(Sort.by(Sort.Direction.DESC, fieldName));
		
	}
	
	public int getNumberOfComment() {
		return commentRepo.countByHistoryOfCommentIdIsNull();
	}
	
	public Comment getOneById(Long id) {
		return commentRepo.findOneById(id);
	}
	
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
		commentRepo.deleteById(id);
	}
	
	public void deleteAll() {
		commentRepo.deleteAll();
	}
	
	
	
	
	
	
	
	

	
}
