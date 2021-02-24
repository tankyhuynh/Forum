package com.ltk.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "post_detail")
public class PostDetailModel{
	

		private Timestamp time;

		@Id
		@ManyToOne
		@JoinColumn(name = "status_id", nullable = false)
		private StatusModel statusId;
		
		@Id
		@ManyToOne
		@JoinColumn(name = "post_id", nullable = false)
		private PostModel postId;
		

		
	
}
