package com.quiz.lesson06;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookingBO;
import com.quiz.lesson06.model.Booking;

@RequestMapping("/lesson06/quiz")
@Controller
public class BookingController {
	
	@Autowired 
	private BookingBO bookingBO; 
	//http://localhost:8080/lesson06/quiz/1
     @RequestMapping("/1")
     public String BookingList(Model model) {
    	List<Booking> booking = bookingBO.getbookinglist();
    	model.addAttribute("bookinglist", booking);
    	
    	 return"lesson06/BookingList";
     }
     
     @RequestMapping("/2")
     public String addBookingView() {
    	 return"lesson06/addBookingView";
     }
     
     //POST: 회원가입 처음 인설트 할때 /GET id로 조회할때 WHERE절에 값이 들어갈떄       PUT: 수정할때  DELETE: 삭제할때   RESTFUL API 
     @ResponseBody
     @DeleteMapping("/delete_booking")
     public Map<String, Object> deletelist(
				@RequestParam("id")int id){
			
			//delete db by id
			int deleteRow = bookingBO.delBookingListById(id);
			
			Map<String, Object> map = new HashMap<>();
			if(deleteRow > 0) {
			    map.put("result", "success");
			}else {
				map.put("result", "failure");
			}
			return map;
		}
     @RequestMapping("/main")
     public String main() {
    	 return"lesson06/main";
     }
     @ResponseBody
     @PostMapping("/add_booking")
     public Map<String,Object> addBooking(
    		 @RequestParam("name")String name,
    		 @RequestParam("date")@DateTimeFormat(pattern="yyyy-MM-dd") Date date,
    		 @RequestParam("day")int day,
    		 @RequestParam("headcount")int headcount,
    		 @RequestParam("phoneNumber")String phoneNumber){
    	 
    	 bookingBO.addBooking(name, date, day, headcount, phoneNumber);
    	 
    	 Map<String,Object> result = new HashMap<>();
    	 result.put("result", "success");
    	 result.put("result_code", 200);
    	 return result;
    	 
     }
     @ResponseBody
     @PostMapping("/get_booking")
     public Map<String, Object>getBooking(
    		 @RequestParam("name")String name,
    		 @RequestParam("phoneNumber")String phoneNumber){
    	 
    	 Booking booking = bookingBO.getlastBookingByNameAndPhoneNumber(name, phoneNumber);
    	 
    	 Map<String, Object> result = new HashMap<>();
    	 result.put("result", "success");
    	 result.put("booking", booking);
    	 return result;
     }
}
