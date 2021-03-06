package com.ltk.forum.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ltk.forum.model.Role;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.UserRepo;

@Service
public class UserService {

	@Autowired
	private UserRepo userRepo;
	
	public List<User> getAll() {
		return userRepo.findAll();
	}
	
	public int getNumberOfUser() {
		return (int)userRepo.count();
	}
	
	public List<User> getAllSortBy(String fieldName, String typeOfSort) {
		typeOfSort = typeOfSort.toLowerCase();
		
		return (typeOfSort.equals("asc")) ? userRepo.findAll(Sort.by(Sort.Direction.ASC, fieldName)) : userRepo.findAll(Sort.by(Sort.Direction.DESC, fieldName));
	
	}
	
	public User getOneById(Long id) {
		return userRepo.findOneById(id);
	}
	
	public User getOneByUsername(String username) {
		return userRepo.findOneByUsername(username);
	}
	
	public User getOneByFullName(String fullName) {
		return userRepo.findOneByFullName(fullName);
	}
	
	public User getOneByEmail(String email) {
		return userRepo.findOneByEmail(email);
	}
	
	public List<User> getAllByFullName(String fullName) {
		return userRepo.findAllByFullName(fullName);
	}
	
	public List<User> getAllByGender(String gender) {
		return userRepo.findAllByGender(gender);
	}
	
	public List<User> getAllByRoleId(Role roleId) {
		return userRepo.findAllByRoleId(roleId);
	}
	
	public User save(User user) {
		return userRepo.save(user);
	}
	
	public void saveAll(List<User> users) {
		for (User user : users) {
			userRepo.save(user);
		}
	}
	
	public User update(Long id, User user) {
		user.setId(id);
		return userRepo.save(user);
	}
	
	public void delete(Long id) {
		userRepo.deleteById(id);
	}
	
	public void deleteAll() {
		userRepo.deleteAll();
	}
	
}
