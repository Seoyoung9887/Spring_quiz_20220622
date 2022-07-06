package com.quiz.lesson05;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.bo.WeatherBO;
import com.quiz.lesson05.model.NewWeather;

@Controller
public class WeatherController {
	@Autowired
	private WeatherBO weatherBO;

	// http://localhost:8080/lesson05/weather
	@RequestMapping("/lesson05/weather")
	public String weather(Model model) {
		List<NewWeather> arr = new ArrayList<>();
		arr = weatherBO.weatherView();
		model.addAttribute("NewWeather", arr);
		return "lessonquiz05/weather";
	}

	// http://localhost:8080/lesson05/weather/add
	@RequestMapping("/lesson05/weather/add")
	public String weatherView() {
		return "lessonquiz05/AddWeather";
	}

	@PostMapping("/lesson05/add_weather")
	public String addWeather(
			@RequestParam("date") String date,
			@RequestParam("weather") String weather,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("microDust") String microDust, 
			@RequestParam("windSpeed") double windSpeed,
			HttpServletResponse response) {
		weatherBO.addWeather(date, weather, temperatures, precipitation, microDust, windSpeed);
		return "redirect:/lesson05/weather";
	}

}
