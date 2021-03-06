package com.quiz.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson04.model.AddSeller;



@Repository
public interface AddSellerDAO {
	public void insertseller(
			@Param("nickname") String nickname, 
			@Param("profileImageUrl") String profileImageUrl, 
			@Param("temperature") double temperature);
	
	public AddSeller selectlastseller();
	public AddSeller selectsellerById(int id);
	


}
