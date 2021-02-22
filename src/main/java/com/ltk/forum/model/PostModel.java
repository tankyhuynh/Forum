package com.ltk.forum.model;

import java.sql.Timestamp;
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
@Table(name = "posts")
public class PostModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private Timestamp thoiGian;
	private String tieuDe;
	private String noiDung;

//	The Loai
	@ManyToOne
	@JoinColumn(name = "type_of_post_id", nullable = false)
	private TypeOfPostModel typeOfPost;
	
//	Sau này chỉnh sửa cần tìm Bài viết gốc để add vô lịch sử chỉnh sửa
//	Lịch sử chỉnh sửa của bài viết con sẽ ko chứa gì trong lịch sử chỉnh sửa
	@ElementCollection
    @CollectionTable(name = "list_history_posts", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "list_history_posts")
	private List<String> lichSuChinhSua;
	
	@OneToMany(mappedBy = "baiVietReportID")
	private List<ReportModel> danhSachBaoCao;
	
	@OneToMany(mappedBy = "baiVietCommentID")
	private List<CommentModel> danhSachBinhLuan;
	
//	Trang Thai
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "posts_status", 
				joinColumns = @JoinColumn(name = "post_id"),
				inverseJoinColumns = @JoinColumn(name = "status_id"))
	private List<StatusModel> post_status;
	
	
	
}
