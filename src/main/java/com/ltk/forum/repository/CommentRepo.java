package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Comment;


public interface CommentRepo extends JpaRepository<Comment, Integer> {

}
