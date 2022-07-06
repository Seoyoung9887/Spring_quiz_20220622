package com.quiz.lesson06;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;
import com.quiz.lesson06.model.AddFavorite;

@RequestMapping("/lesson06")
@Controller
public class lesson06controller {
	
	private FavoriteBO favoriteBO;
	//http://localhost:8080/lesson06/addfavorite
	@RequestMapping("/addfavorite")
	public String quiz01() {
		return"lessonquiz06/add_favorite";
	}
	@ResponseBody
	@PostMapping("/add_favorite")
	public String addfavorite(
			@RequestParam("name")String name,
			@RequestParam("url")String url) {
		favoriteBO.addfavorite(name, url);
		return"성공";
		
	}
	//http://local:8080/lesson06/favoriteview
	@RequestMapping("/favoriteview")
	public String favoriteview(Model model) {
		List<AddFavorite> favorite = new ArrayList<>();
		favorite = favoriteBO.getfavorite();
		model.addAttribute("AddFavorite", favorite);
		return"lessonquiz06/FavoriteView";
	}

}
