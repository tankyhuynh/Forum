package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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

//	Trang Thai
	@ManyToOne
	@JoinColumn(name = "trang_thai_id", nullable = false)
	private StatusModel trangThaiId;
	
	private Timestamp thoiGian;
	private String tieuDe;
	private String noiDung;

//	The Loai
	@ManyToOne
	@JoinColumn(name = "type_of_post_id", nullable = false)
	private TypeOfPostModel typeOfPost;
	
//	Sau này chỉnh sửa cần tìm Bài viết gốc để add vô lịch sử chỉnh sửa
//	Lịch sử chỉnh sửa của bài viết con sẽ ko chứa gì trong lịch sử chỉnh sửa
	private List<String> lichSuChinhSua;
	
	@OneToMany(mappedBy = "baiVietID")
	private List<CommentModel> danhSachBinhLuan;
	
	
	
}
