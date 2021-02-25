package com.ltk.forum.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "type_of_report")
@Data
public class TypeOfReport {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "type_code")
	private String typeCode;
	
	@Column(name = "type_name")
	private String typeName;
	
	@OneToMany(mappedBy = "typeOfReportId")
	private List<Report> reportList;
}
