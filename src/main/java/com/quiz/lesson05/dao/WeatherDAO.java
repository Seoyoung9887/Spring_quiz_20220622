package com.quiz.lesson05.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.NewWeather;

@Repository
public interface WeatherDAO {
	public List<NewWeather> selectweatherView();
	public void insertWeather(
			@Param("date")String date,
			@Param("weather") String weather,
			@Param("temperatures") double temperatures,
			@Param("precipitation") double precipitation,
			@Param("microDust") String microDust,
			@Param("windSpeed") double windSpeed);

}
