package com.quiz.lesson06.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Booking;

@Repository
public interface BookingDAO {
	
	public List<Booking> selectbookinglist();
	public int delBookingListById(int id);
	
	public void insertBooking(
			@Param("name") String name,
			@Param("name") Date date,
			@Param("name") int day,
			@Param("name") int headcount,
			@Param("name") String phoneNumber);
	
	public List<Booking>  selectBookingListByNameAndPhoneNumber(
			@Param("name") String name, 
			@Param("phoneNumber")String phoneNumber);

}
