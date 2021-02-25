package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.User;


public interface CommentRepo extends JpaRepository<Comment, Integer> {

	Comment findOneById(Long id);
	Comment findOneByContent(String content);
	Comment findOneByUserId(User userId);
	Comment findOneByPostId(Post postId);

	
}
