package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.TypeOfReport;


public interface TypeOfReportRepo extends JpaRepository<TypeOfReport, Long> {

	TypeOfReport findOneById(Long id);
	TypeOfReport findOneByTypeCode(String typeCode);
	TypeOfReport findOneByTypeName(String typeName);
	
}
