package com.ltk.forum.services;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Report;
import com.ltk.forum.model.Role;
import com.ltk.forum.model.TypeOfReport;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.RoleRepo;

@Service
public class RoleService {

	@Autowired
	private RoleRepo roleRepo;
	
	public List<Role> getAll() {
		return roleRepo.findAll();
	}
	
	public List<Role> getAllSortBy(String fieldName, String typeOfSort) {
		typeOfSort = typeOfSort.toLowerCase();
		
		return (typeOfSort.equals("asc")) ? roleRepo.findAll(Sort.by(Sort.Direction.ASC, fieldName)) : roleRepo.findAll(Sort.by(Sort.Direction.DESC, fieldName));
	
	}
	
	public Role getOneById(Long id) {
		return roleRepo.findOneById(id);
	}
	
	public Role getOneByRoleCode(String roleCode) {
		return roleRepo.findOneByRoleCode(roleCode);
	}
	
	public Role getOneByRoleName(String roleName) {
		return roleRepo.findOneByRoleName(roleName);
	}
	
	public Role save(Role role) {
		return roleRepo.save(role);
	}
	
	public void saveAll(List<Role> reports) {
		for (Role post : reports) {
			roleRepo.save(post);
		}
	}
	
	public Role update(Long id, Role role) {
		role.setId(id);
		return roleRepo.save(role);
	}
	
	public void delete(Long id) {
		roleRepo.deleteById(id);
	}
	
	public void deleteAll() {
		roleRepo.deleteAll();
	}
	
}
