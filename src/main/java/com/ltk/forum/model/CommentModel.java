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
	
//	Bai Viet ID
	@ManyToOne
	@JoinColumn(name = "post_id", nullable = false)
	private PostModel postId;

	
//	User ID
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private UserModel userId;
	
//	Lịch sử chỉnh sửa
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="history_commnent_id")
	private CommentModel commentModelModify;

	@OneToMany(mappedBy="commentModelModify")
	private List<CommentModel> modifyHistory = new ArrayList<CommentModel>();
	
//	Bình luận con 
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="subcommnent_id")
	private CommentModel commentModelSubcommnet;

	@OneToMany(mappedBy="commentModelSubcommnet")
	private List<CommentModel> subcommentIds = new ArrayList<CommentModel>();
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "comment_status", 
				joinColumns = @JoinColumn(name = "comment_id"),
				inverseJoinColumns = @JoinColumn(name = "status_id"))
	private List<StatusModel> commenStatus;
	
	
	
}
