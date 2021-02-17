package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.RoleModel;


public interface RoleRepo extends JpaRepository<RoleModel, Integer> {

}
