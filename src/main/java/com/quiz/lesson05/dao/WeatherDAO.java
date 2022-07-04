package com.quiz.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.NewWeather;

@Repository
public interface WeatherDAO {
	public List<NewWeather> selectweatherView();

}
