package com.ltk.forum.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Table(name = "type_of_report")
@Data
public class TypeOfReport {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", columnDefinition = "TINYINT")
	private Long id;
	
	@Column(name = "type_code", length = 20, nullable = false )
	private String typeCode;
	
	@Column(name = "type_name", length = 45, nullable = false)
	private String typeName;
	
	@OneToMany(mappedBy = "typeOfReportId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JsonIgnore
	private List<Report> reportList;
}
