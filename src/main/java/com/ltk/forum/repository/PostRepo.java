package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.Status;
import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.model.User;

@Repository
public interface PostRepo extends JpaRepository<Post, Long> {

	Post findOneById(Long id);
	Post findOneByTitle(String title);
	Post findOneByContent(String content);
	Post findOneByUserId(User userId);
	Post findOneByTypeOfPostId(TypeOfPost typeOfPostId);
	Post findOneByHistoryOfPostId(Post historyOfPostId);
	
	List<Post> findAllByHistoryOfPostIdIsNull();
	List<Post> findAllByTimeBetween(Timestamp startTime, Timestamp endTime);
	List<Post> findAllByStatusId(Status statusId);
	List<Post> findAllByTypeOfPostId(TypeOfPost typeOfPostId);
	List<Post> findAllByTitleContaining(String content);

	
}
