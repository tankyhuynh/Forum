package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Status;
import com.ltk.forum.repository.StatusRepo;

@Service
public class StatusService {

	@Autowired
	private StatusRepo statusRepo;
	
	public List<Status> getAll() {
		return statusRepo.findAll();
	}
	
	public Status getOneById(Long id) {
		return statusRepo.findOneById(id);
	}
	
	public Status getOneByStatusCode(String statusCode) {
		return statusRepo.findOneByStatusCode(statusCode);
	}
	
	public Status getOneByStatusName(String statusName) {
		return statusRepo.findOneByStatusName(statusName);
	}
	
	public Status save(Status status) {
		return statusRepo.save(status);
	}
	
	public void saveAll(List<Status> liststatus) {
		for (Status status : liststatus) {
			statusRepo.save(status);
		}
	}
	
	public Status update(Long id, Status status) {
		status.setId(id);
		return statusRepo.save(status);
	}
	
	public void delete(Long id) {
		statusRepo.deleteById(id);
	}
	
	public void deleteAll() {
		statusRepo.deleteAll();
	}
	
}
