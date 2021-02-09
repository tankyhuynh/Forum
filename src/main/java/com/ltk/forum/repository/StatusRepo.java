package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.StatusModel;

@Repository
public interface StatusRepo extends JpaRepository<StatusModel, Integer> {

}
