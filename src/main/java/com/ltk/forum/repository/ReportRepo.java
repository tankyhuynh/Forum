package com.ltk.forum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ltk.forum.model.Report;


public interface ReportRepo extends JpaRepository<Report, Integer> {

}
