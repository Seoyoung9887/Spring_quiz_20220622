package com.quiz.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuizController {
	
	//http://localhost:8080/lesson05/quiz01
	@RequestMapping("/lesson05/quiz01")
	public String quiz01() {
		return"lessonquiz05/quiz01";	
		}
	

}
