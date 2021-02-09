package com.ltk.forum.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "reports")
public class ReportModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Timestamp thoiGian;
	
//	Bai Viet
	@ManyToOne
	@JoinColumn(name = "bai_viet_id", nullable = false)
	private PostModel baiVietReportID;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private UserModel userId;
	
	@ManyToOne
	@JoinColumn(name = "type_of_report_id", nullable = false)
	private TypeOfReportModel typeOfReport;
	
}
