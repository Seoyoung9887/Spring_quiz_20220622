package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	
	@Autowired
	private RealEstateDAO realestateDAO;
	public RealEstate getRealEstate(int id) {
		return realestateDAO.selectRealEstate(id);
		
	}
	
	
	public List<RealEstate> getRealEstateListByRentPrice(int rentPrice){
	     	
		return realestateDAO.selectRealEstateListByRentPrice(rentPrice);
	}
	
	public List<RealEstate> getRealEstateListByAreaAndPrice(int area , int price){
		
		return realestateDAO.selectRealEstateListByAreaAndPrice(area, price);
	}
	
	public int addRealEstate(RealEstate realEstste) {
		
		return realestateDAO.insertRealEstate(realEstste);
	}
	
	public int addRealEstateAsField(int realtorId, String address, int area, String type, int price, Integer rentPrice) {
		
		return realestateDAO.insertRealEstateAsField(realtorId,address, area, type, price, rentPrice);
		
	}

}
