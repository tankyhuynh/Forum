package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Comment;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.User;

public interface CommentRepo extends JpaRepository<Comment, Long> {

	Comment findOneById(Long id);
	Comment findOneByContent(String content);
	Comment findOneByUserId(User userId);
	Comment findOneByPostId(Post postId);
	
	List<Comment> findAllByTimeBetween(Timestamp startTime, Timestamp endTime);
	List<Comment> findAllByPostId(Post postId);
	List<Comment> findAllByHistoryOfCommentIdIsNullAndChildOfCommentIdIsNullAndPostId(Post postId);

	int countByHistoryOfCommentIdIsNull();
}
