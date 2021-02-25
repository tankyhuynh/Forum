package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Post;


public interface PostRepo extends JpaRepository<Post, Integer> {

}
