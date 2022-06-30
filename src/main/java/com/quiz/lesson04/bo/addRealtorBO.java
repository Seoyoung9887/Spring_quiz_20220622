package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.RealtorDAO;
import com.quiz.lesson04.model.NewRealtor;

@Service
public class addRealtorBO {
	@Autowired RealtorDAO realtorDAO;
	public void addRealtor(NewRealtor newrealtor) {
		realtorDAO.insertRealtor(newrealtor);
	}
	public NewRealtor getRealtorById(int id) {
		return realtorDAO.selectRealtorById(id);
		
	}

}
