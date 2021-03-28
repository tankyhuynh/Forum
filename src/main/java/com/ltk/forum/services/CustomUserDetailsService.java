package com.ltk.forum.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.ltk.forum.dto.MyUser;
import com.ltk.forum.model.User;
import com.ltk.forum.repository.UserRepo;

@Service
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	UserRepo userRepo;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepo.findOneByUsername(username);
		if (user == null) {
			throw new UsernameNotFoundException("User not found");
		}
		
		List<GrantedAuthority> authorities = new ArrayList<>();
			authorities.add(new SimpleGrantedAuthority(user.getRoleId().getRoleCode()));
		
		MyUser myUser = new MyUser(user.getUsername(), user.getPassword(), true, true, true, true, authorities);
		myUser.setFullName(user.getFullName());
		myUser.setId(user.getId());
		return myUser;
	}

}
	

