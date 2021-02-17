package com.ltk.forum.model;

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
@Table(name = "users")
public class UserModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String hoTen;
	private String taiKhoan;
	private String matKhau;
	private String email;
	private String soDienThoai;
	
//	Vai tro manytoone
	@ManyToOne
	@JoinColumn(name = "role_id", nullable = false)
	private RoleModel vaiTroId;
	
	@OneToMany(mappedBy = "userId")
	private List<ReportModel> danhSachBaoCao;
	
	@OneToMany(mappedBy = "userId")
	private List<CommentModel> danhSachBinhLuan;
	
	
}
