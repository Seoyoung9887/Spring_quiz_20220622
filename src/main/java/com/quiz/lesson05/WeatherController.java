package com.quiz.lesson05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson05.bo.WeatherBO;
import com.quiz.lesson05.model.NewWeather;

@Controller
public class WeatherController {
	@Autowired
	private WeatherBO weatherBO;

	//
	@RequestMapping("/lesson05/weather")
	public String weather(
			Model model) {
		List<NewWeather> arr = new ArrayList<>();
		arr = weatherBO.weatherView();
		model.addAttribute("NewWeather", arr);
		return "lessonquiz05/weather";
	}

}
