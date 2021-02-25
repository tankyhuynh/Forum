package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Status;


public interface StatusRepo extends JpaRepository<Status, Long> {

	Status findOneById(Long id);
	Status findOneByStatusCode(String statusCode);
	Status findOneByStatusName(String statusName);
	
}
