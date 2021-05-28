package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.Report;
import com.ltk.forum.model.TypeOfReport;
import com.ltk.forum.model.User;


public interface ReportRepo extends JpaRepository<Report, Long> {

	Report findOneById(Long id);
	Report findOneByTime(Timestamp time);
	
	Report findOneByPostId(Post postId);
	Report findOneByUserId(User userId);
	
	List<Report> findAllByTypeOfReportId(TypeOfReport typeOfReportId);
	List<Report> findAllByTimeBetween(Timestamp startTime, Timestamp endTime);
	
	long count();
	
}
