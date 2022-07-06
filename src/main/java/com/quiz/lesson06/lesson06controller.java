package com.quiz.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/lesson06")
@Controller
public class lesson06controller {
	@RequestMapping("/addFavorite")
	public String quiz01() {
		return"lessonquiz06/add_favorite";
	}
	
	@PostMapping("/add_favorite")
	public String addfavorite(
			@RequestParam("name")String name,
			@RequestParam("url")String url) {
		
		return"";
		
	}

}
