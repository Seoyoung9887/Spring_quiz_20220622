package com.quiz.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {
	//http"//localhost:8080/lesson01/quiz01/5
	@RequestMapping("/lesson01/quiz01/3")
	public String quiz01_3() {
		//     /WEB-INF/jsp/lessonquiz01/quiz03.jsp
		return "lessonquiz01/quiz03";
	}

}
