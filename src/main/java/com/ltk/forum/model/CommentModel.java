package com.ltk.forum.model;

import java.sql.Timestamp;
import java.util.List;

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
@Table(name = "comments")
public class CommentModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String noiDung;
	
//	Bai Viet ID
	@ManyToOne
	@JoinColumn(name = "bai_viet_id", nullable = false)
	private PostModel baiVietID;
	
//	Nguoi Dung ID;
	private UserModel nguoiDungId;

	
//	User ID
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private UserModel userId;
	
//	Lịch sử chỉnh sửa
	private List<String> lichSuChinhSua;
	
	
	
}
