package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ltk.forum.dto.ICountPost;
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
	

	List<Post> findAllByTitleContainingAndHistoryOfPostIdIsNull(String content);
	
	@Query(value = "SELECT COUNT(a.id) as soLuong, b.fullName as fullName, b.id as userId FROM Post as a, User as b "
			  + "WHERE a.userId = b.id "
			  + "AND a.historyOfPostId IS NULL "
			  + "GROUP BY (b.id) "
			  + "ORDER BY COUNT(a.id) DESC")
	List<ICountPost> rank(Pageable pageable);
	
	int countByHistoryOfPostIdIsNull();

	
}
