package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.TypeOfPost;


public interface TypeOfPostRepo extends JpaRepository<TypeOfPost, Integer>{

	TypeOfPost findOneById(Long id);
	TypeOfPost findOneByTypeCode(String typeCode);
	TypeOfPost findOneByTypeName(String typeName);
	
}
