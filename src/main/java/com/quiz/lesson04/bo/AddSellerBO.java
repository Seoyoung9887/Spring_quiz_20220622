package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.AddSellerDAO;
import com.quiz.lesson04.model.AddSeller;

@Service
public class AddSellerBO {
	@Autowired
	private AddSellerDAO addsellerDAO;
	public void addseller( String nickname, String profileImageUrl, double temperature){
		addsellerDAO.insertseller( nickname, profileImageUrl, temperature);
		
	}
	public AddSeller getlastseller() {
		return addsellerDAO.selectlastseller();
		
	}
	public AddSeller getsellerById(int id) {
		return addsellerDAO.selectsellerById(id);
		
	}
	
	

}
