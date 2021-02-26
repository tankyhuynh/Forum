package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.TypeOfReport;
import com.ltk.forum.repository.TypeOfReportRepo;

@Service
public class TypeOfReportService {

	@Autowired
	private TypeOfReportRepo typeOfReportRepo;
	
	public List<TypeOfReport> getAll() {
		return typeOfReportRepo.findAll();
	}
	
	public TypeOfReport getOneById(Long id) {
		return typeOfReportRepo.findOneById(id);
	}
	
	public TypeOfReport getOneByTypeCode(String typeOfReport) {
		return typeOfReportRepo.findOneByTypeCode(typeOfReport);
	}
	
	public TypeOfReport getOneByTypeName(String typeOfReport) {
		return typeOfReportRepo.findOneByTypeName(typeOfReport);
	}
	
	public TypeOfReport save(TypeOfReport typeOfReport) {
		return typeOfReportRepo.save(typeOfReport);
	}
	
	public void saveAll(List<TypeOfReport> typeOfReports) {
		for (TypeOfReport typeOfReport : typeOfReports) {
			typeOfReportRepo.save(typeOfReport);
		}
	}
	
	public TypeOfReport update(Long id, TypeOfReport typeOfReport) {
		typeOfReport.setId(id);
		return typeOfReportRepo.save(typeOfReport);
	}
	
	public void delete(Long id) {
		typeOfReportRepo.deleteById(id);
	}
	
	public void deleteAll() {
		typeOfReportRepo.deleteAll();
	}
	
}
