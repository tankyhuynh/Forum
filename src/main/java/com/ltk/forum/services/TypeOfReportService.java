package com.ltk.forum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.repository.TypeOfReportRepo;

@Service
public class TypeOfReportService {

	@Autowired
	private TypeOfReportRepo typeOfReportRepo;
	
}
