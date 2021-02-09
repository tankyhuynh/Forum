package com.ltk.forum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.repository.TypeOfPostRepo;

@Service
public class TypeOfPostService {

	@Autowired
	private TypeOfPostRepo typeOfPostRepo;
	
}
