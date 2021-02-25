package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.CommentDetail;
import com.ltk.forum.model.Post;
import com.ltk.forum.model.PostDetail;
import com.ltk.forum.model.Status;

public interface PostDetailRepo extends JpaRepository<PostDetail, Integer> {

	PostDetail findOneById(Long id);
	PostDetail findOneByTime(Timestamp time);
	List<PostDetail> findAllByTimeBetween(Timestamp startTime, Timestamp endTime);
	
	PostDetail findOneByStatusId(Status statusId);
	PostDetail findOneByPostId(Post postId);
	
}
