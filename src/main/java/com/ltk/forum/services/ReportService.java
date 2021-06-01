package com.ltk.forum.services;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.Report;
import com.ltk.forum.model.Status;
import com.ltk.forum.model.TypeOfReport;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.ReportRepo;

@Service
public class ReportService {

	@Autowired
	private ReportRepo reportRepo;
	
	public List<Report> getAll() {
		return reportRepo.findAll();
	}
	
	public List<Report> getAllSortBy(String fieldName, String typeOfSort) {
		typeOfSort = typeOfSort.toLowerCase();
		
		return (typeOfSort.equals("asc")) ? reportRepo.findAll(Sort.by(Sort.Direction.ASC, fieldName)) : reportRepo.findAll(Sort.by(Sort.Direction.DESC, fieldName));
	}
	
	public Report getOneById(Long id) {
		return reportRepo.findOneById(id);
	}
	
	public Report getOneByTime(Timestamp time) {
		return reportRepo.findOneByTime(time);
	}
	
	//*
	public Report getOneByUserId(User userId) {
		return reportRepo.findOneByUserId(userId);
	}
	
	public List<Report> getAllByTypeOfReportId(TypeOfReport typeOfReportId) {
		return reportRepo.findAllByTypeOfReportId(typeOfReportId);
	}
	
	
	public List<Report> getAllByTimeBetween(Timestamp startTime, Timestamp endTime) {
		return reportRepo.findAllByTimeBetween(startTime, endTime);
	}
	
	public int getNumberOfReport() {
		return (int)reportRepo.count();
	}
	
	public Report save(Report report) {
		return reportRepo.save(report);
	}
	
	public void saveAll(List<Report> reports) {
		for (Report post : reports) {
			reportRepo.save(post);
		}
	}
	
	public Report update(Long id, Report post) {
		post.setId(id);
		return reportRepo.save(post);
	}
	
	public void delete(Long id) {
		reportRepo.deleteById(id);
	}
	
	public void deleteAll() {
		reportRepo.deleteAll();
	}
	
	
}
