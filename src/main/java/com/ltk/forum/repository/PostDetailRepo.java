package com.ltk.forum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.PostDetail;
import com.ltk.forum.model.Status;

@Repository
public interface PostDetailRepo extends JpaRepository<PostDetail, Integer> {

//	@Query(" SELECT a FROM post as a where a.history_of_post_id is null ")
//	List<PostDetail> findAllByStatusIdNotEqual(Status statusId);
//	
//	PostDetail findOneById(Long id);
	
}
