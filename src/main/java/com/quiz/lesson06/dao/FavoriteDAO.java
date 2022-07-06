package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.AddFavorite;

@Repository
public interface FavoriteDAO {
	 
	public void insertfavorite(
			@Param("name") String name, 
			@Param("url") String url);
	public List<AddFavorite> selectfavorite();
	

}
