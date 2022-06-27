package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

//@RequestMapping("/lesson03/quiz02")
@RestController
public class RealEstateRestController {
	@Autowired
	private RealEstateBO realestateBO;
	//http:localhost:0808/lesson03/quiz01/1
	@RequestMapping("/lesson03/quiz01/1")
	public RealEstate quiz01(@RequestParam("id")int id
			) {
		return realestateBO.getRealEstate(id);
		
	}
	
	//http://localhost:8080/lesson03/quiz01/2?rent_price=90
	@RequestMapping("/lesson03/quiz01/2")
	public List<RealEstate> quiz01_2(
			@RequestParam("rent_price")int rentPrice){
		return realestateBO.getRealEstateListByRentPrice(rentPrice);
		
	}
	//http://localhost:8080/lesson03/quiz01/3?area=90&price=130000
	@RequestMapping("/lesson03/quiz01/3")
	public List<RealEstate> quiz01_3(
			@RequestParam("area") int area,
			@RequestParam("price") int price){
		return realestateBO.getRealEstateListByAreaAndPrice(area, price);
		
	}
	
	//http://localhost:8080/lesson03/quiz02/1
	@RequestMapping("/lesson03/quiz02/1")
	public String quiz02() {
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int row = realestateBO.addRealEstate(realEstate);
		
		return "입력성공:"+row ;
		
	}
	//http://localhost:8080/lesson03/quiz02/2?realtor_id=5
	@RequestMapping("/lesson03/quiz02/2")
	public String quiz02_2(
			@RequestParam("realtor_id")int realtorId) {
		int row = realestateBO.addRealEstateAsField(realtorId,"썅떼빌리버 오피스텔 814호",45,"월세",100000,120 );
		return "성공"+row;
	}
	
	

}
