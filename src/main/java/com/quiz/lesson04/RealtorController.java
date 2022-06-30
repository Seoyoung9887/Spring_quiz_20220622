package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.addRealtorBO;
import com.quiz.lesson04.model.NewRealtor;

@RequestMapping("/lesson04/quiz02")
@Controller
public class RealtorController {
	@Autowired
	private addRealtorBO addrealtorBO;
	//http://localhost:8080/lesson04/quiz02/1
	@RequestMapping("/1")
	public String addRealtorView() {
		return "lessonquiz02/addRealtor";
		
	}
	//http://localhost:8080/lesson04/quiz02/add_realtor
	@PostMapping("/add_realtor")
	public String addRealtor(
			@ModelAttribute NewRealtor newrealtor,
			Model model) {
		
		addrealtorBO.addRealtor(newrealtor);
		
		newrealtor =  addrealtorBO.getRealtorById(newrealtor.getId());
		
		model.addAttribute("result", newrealtor);
		model.addAttribute("subject", "공인중개사 정보");
		
		return"lessonquiz02/afterRealtor";
	}

}
