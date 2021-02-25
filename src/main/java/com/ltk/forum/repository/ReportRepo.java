package com.ltk.forum.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.Report;
import com.ltk.forum.model.TypeOfReport;
import com.ltk.forum.model.User;


public interface ReportRepo extends JpaRepository<Report, Integer> {

	Report findOneById(Long id);
	Report findOneByTime(Timestamp time);
	List<Report> findAllByTimeBetween(Timestamp startTime, Timestamp endTime);
	
	Report findOneByPostId(Post postId);
	Report findOneByUserId(User userId);
	Report findOneByTypeOfReportId(TypeOfReport typeOfReportId);
	
	
}
