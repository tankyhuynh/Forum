package com.ltk.forum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.repository.StatusRepo;

@Service
public class StatusService {

	@Autowired
	private StatusRepo statusRepo;
	
}
