package com.ltk.forum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.repository.ReportRepo;

@Service
public class ReportService {

	@Autowired
	private ReportRepo reportRepo;
	
}