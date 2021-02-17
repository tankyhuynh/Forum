package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.UserModel;


public interface UserRepo extends JpaRepository<UserModel, Integer> {

}
