package com.ltk.forum.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "comments")
public class CommentModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String content;
	

	@ManyToOne
	@JoinColumn(name = "post_id", nullable = false)
	private PostModel postId;


	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private UserModel userId;
	
//	Lịch sử chỉnh sửa
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="history_of_commnent_id")
	private CommentModel historyOfCommentId;

	@OneToMany(mappedBy="historyOfCommentId")
	private List<CommentModel> historyOfCommentList;
	
//	Lịch sử chỉnh sửa
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="child_of_commnent_id")
	private CommentModel childOfCommentId;

	@OneToMany(mappedBy="childOfCommentId")
	private List<CommentModel> childOfCommentList;
	
	@OneToMany(mappedBy = "commentId")
	private List<CommentDetailModel> commentDetailList;
	
}
