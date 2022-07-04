package com.quiz.lesson05.dao;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.NewWeather;

@Repository
public interface WeatherDAO {
	public void selectweatherView(NewWeather newweather);

}
