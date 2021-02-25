package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "report")
@Data
public class Report {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "time")
	private Timestamp time;
	
	@ManyToOne
	@JoinColumn(name = "post_id", nullable = false)
	private Post postId;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private User userId;
	
	@ManyToOne
	@JoinColumn(name = "type_of_report_id", nullable = false)
	private TypeOfReport typeOfReportId;
	
}
