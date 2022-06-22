package com.quiz.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Quiz01Controller {
	
	@RequestMapping("/lesson01/quiz01/1")
	@ResponseBody
	public String quiz1_1() {
		String text = "<strong><h3>테스트 프로젝트 완성</h3><h5>해당 프로젝트를 통해서 문제 풀이를 진행 합니다</h5></strong>";
		return text;
	}
	@RequestMapping("/lesson01/quiz01/2")
	public @ResponseBody Map<String, Object>quiz01_2(){
		Map<String, Object> map = new HashMap<>();
		map.put("국어",80);
		map.put("수학",90);
		map.put("영어",85);
		
		return map;
	}
	

}
