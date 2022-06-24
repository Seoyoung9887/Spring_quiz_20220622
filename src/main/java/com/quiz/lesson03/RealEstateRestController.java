package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RestController
public class RealEstateRestController {
	@Autowired
	private RealEstateBO realestateBO;
	//http:localhost:0808/lesson03/quiz01/1
	@RequestMapping("/lesson03/quiz01/1")
	public RealEstate quiz01(@RequestParam("id")int id
			) {
		return realestateBO.getRealEstate(id);
		
	}

}