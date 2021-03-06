package com.ltk.forum.services;

import java.sql.Timestamp;
import java.util.List;import org.jboss.logging.annotations.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.Status;
import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.PostRepo;
import com.ltk.forum.repository.StatusRepo;

@Service
public class PostService {

	@Autowired
	private PostRepo postRepo;
	
	
	public List<Post> getAllByContent(String content){
		return postRepo.findAllByTitleContainingAndHistoryOfPostIdIsNull(content);
	}
	
	public List<Post> getAll() {
		return postRepo.findAll();
	}
	
	public List<Post> getAllSortBy(String fieldName, String typeOfSort) {
		typeOfSort = typeOfSort.toLowerCase();
		
		return (typeOfSort.equals("asc")) ? postRepo.findAll(Sort.by(Sort.Direction.ASC, fieldName)) : postRepo.findAll(Sort.by(Sort.Direction.DESC, fieldName));
		
	}
	
	public List<Post> getAllByNullHistory() {
		
		return postRepo.findAllByHistoryOfPostIdIsNull();
	}
	
	public Post getOneById(Long id) {
		return postRepo.findOneById(id);
	}
	
	public int getNumberOfPost() {
		return postRepo.countByHistoryOfPostIdIsNull();
	}
	
	//*
	public Post getOneByUserId(User userId) {
		return postRepo.findOneByUserId(userId);
	}
	
	public List<Post> getAllByStatusId(Status status) {
		return postRepo.findAllByStatusId(status);
	}
	
	public List<Post> getAllByTimeBetween(Timestamp startTime, Timestamp endTime) {
		return postRepo.findAllByTimeBetween(startTime, endTime);
	}
	
	public List<Post> getAllByTypeOfPostId(TypeOfPost typeOfPost) {
		return postRepo.findAllByTypeOfPostId(typeOfPost);
	}
	
	
	public Post save(Post post) {
		return postRepo.save(post);
	}
	
	public void saveAll(List<Post> posts) {
		for (Post post : posts) {
			postRepo.save(post);
		}
	}
	
	public Post update(Long id, Post post) {
		post.setId(id);
		return postRepo.save(post);
	}
	
	public void delete(Long id) {
		postRepo.deleteById(id);
	}
	
	public void deleteAll() {
		postRepo.deleteAll();
	}
	
}
