package com.ltk.forum.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "type_of_posts")
public class TypeOfPostModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String maTheLoai;
	private String tenTheLoai;
	
	@OneToMany(mappedBy = "typeOfPost")
	private List<PostModel> danhSachBaiViet;
	
//	Vai tro manytoone
	
}
