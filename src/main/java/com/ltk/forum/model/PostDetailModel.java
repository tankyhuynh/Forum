package com.ltk.forum.model;

import java.sql.Timestamp;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@EqualsAndHashCode
@Table(name = "post_detail")
public class PostDetailModel{

		private Timestamp time;
		
		@Id
	    int id;

		@ManyToOne
		@JoinColumn(name = "status_id", nullable = false)
		private StatusModel statusId;
		
		
		@ManyToOne
		@JoinColumn(name = "post_id", nullable = false)
		private PostModel postId;
		

		
	
}
