package com.quiz.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.quiz.lesson04.model.NewRealtor;

@Repository
public interface RealtorDAO {
	public void insertRealtor(NewRealtor newrealtor);
	public NewRealtor selectRealtorById(int id);

}
