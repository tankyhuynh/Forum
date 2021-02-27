package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.TypeOfPost;
import com.ltk.forum.repository.TypeOfPostRepo;

@Service
public class TypeOfPostService {

	@Autowired
	private TypeOfPostRepo typeOfPostRepo;
	
	public List<TypeOfPost> getAll() {
		return typeOfPostRepo.findAll();
	}
	
	public List<TypeOfPost> getAllSortBy(String fieldName, String typeOfSort) {
		typeOfSort = typeOfSort.toLowerCase();
		
		return (typeOfSort.equals("asc")) ? typeOfPostRepo.findAll(Sort.by(Sort.Direction.ASC, fieldName)) : typeOfPostRepo.findAll(Sort.by(Sort.Direction.DESC, fieldName));
	
	}
	
	public TypeOfPost getOneById(Long id) {
		return typeOfPostRepo.findOneById(id);
	}
	
	public TypeOfPost getOneByTypeCode(String typeOfPost) {
		return typeOfPostRepo.findOneByTypeCode(typeOfPost);
	}
	
	public TypeOfPost getOneByTypeName(String typeOfPost) {
		return typeOfPostRepo.findOneByTypeName(typeOfPost);
	}
	
	public TypeOfPost save(TypeOfPost typeOfPost) {
		return typeOfPostRepo.save(typeOfPost);
	}
	
	public void saveAll(List<TypeOfPost> typeOfPosts) {
		for (TypeOfPost typeOfPost : typeOfPosts) {
			typeOfPostRepo.save(typeOfPost);
		}
	}
	
	public TypeOfPost update(Long id, TypeOfPost typeOfPost) {
		typeOfPost.setId(id);
		return typeOfPostRepo.save(typeOfPost);
	}
	
	public void delete(Long id) {
		typeOfPostRepo.deleteById(id);
	}
	
	public void deleteAll() {
		typeOfPostRepo.deleteAll();
	}
	
}
