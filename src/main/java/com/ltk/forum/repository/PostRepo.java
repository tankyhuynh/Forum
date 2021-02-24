package com.ltk.forum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.Post;

@Repository
public interface PostRepo extends JpaRepository<Post, Integer> {

//	@Query(" SELECT a FROM post as a where a.history_of_post_id is null ")
	List<Post> findAllByHistoryOfPostIdIsNull();
	
	Post findOneById(Long id);
	
}
