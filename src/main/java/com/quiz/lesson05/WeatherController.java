package com.quiz.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson05.model.NewWeather;

@Controller
public class WeatherController {
	
	@RequestMapping("/lesson05/weather")
	public String weather(
			@ModelAttribute NewWeather newweather) {
		
		return"lessonquiz05/weather";
	}

}
