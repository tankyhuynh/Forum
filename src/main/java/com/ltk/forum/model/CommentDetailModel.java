package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "comment_detail")
public class CommentDetailModel {
	
		private Timestamp time;

		@ManyToOne
		@JoinColumn(name = "status_id", nullable = false)
		private StatusModel statusId;
		
		@ManyToOne
		@JoinColumn(name = "comment_id", nullable = false)
		private CommentModel commentId;
		
	
}


