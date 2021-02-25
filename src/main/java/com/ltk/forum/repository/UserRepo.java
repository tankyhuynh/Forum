package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.User;


public interface UserRepo extends JpaRepository<User, Integer> {

}
