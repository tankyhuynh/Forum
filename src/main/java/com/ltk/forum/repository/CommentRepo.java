package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.CommentModel;

@Repository
public interface CommentRepo extends JpaRepository<CommentModel, Integer> {

}
