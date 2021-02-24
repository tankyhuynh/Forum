package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Post;
import com.ltk.forum.model.PostDetail;
import com.ltk.forum.model.Status;
import com.ltk.forum.repository.PostDetailRepo;
import com.ltk.forum.repository.PostRepo;
import com.ltk.forum.repository.StatusRepo;

@Service
public class PostDetailService {

	@Autowired
	private PostDetailRepo postDetailRepo;
	
	@Autowired
	private StatusRepo statusRepo;
	
	
//	public List<PostDetail> getAllByStatus(String statusCode) {
//		Status status = statusRepo.findOneByStatusCode(statusCode);
//		return postDetailRepo.findAllByStatusIdNotEqual(status);
//		
//		
//	}
	
	
}
