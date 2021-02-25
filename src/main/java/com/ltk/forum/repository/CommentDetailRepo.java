package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Comment;
import com.ltk.forum.model.CommentDetail;
import com.ltk.forum.model.Status;


public interface CommentDetailRepo extends JpaRepository<CommentDetail, Integer> {

	CommentDetail findOneById(Long id);
	CommentDetail findOneByTime(Timestamp time);
	List<CommentDetail> findAllByTimeBetween(Timestamp startTime, Timestamp endTime);
	CommentDetail findOneByStatusId(Status statusId);
	CommentDetail findOneByCommentId(Comment commentId);

	
}
