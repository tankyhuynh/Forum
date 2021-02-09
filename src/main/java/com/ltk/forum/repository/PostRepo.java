package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ltk.forum.model.PostModel;

@Repository
public interface PostRepo extends JpaRepository<PostModel, Integer> {

}
