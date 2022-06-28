package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.AddSellerBO;
import com.quiz.lesson04.model.AddSeller;

@RequestMapping("/lesson04")
@Controller
public class SellerController {
	@Autowired
	private AddSellerBO addsellerBO;
	//http://localhost:8080/lesson04/quiz01/1
	@RequestMapping(method = RequestMethod.GET,path ="/quiz01/1")
	public String addsellerview() {
		return"lessonquiz02/add_seller";
	}
	@PostMapping("/quiz01/addseller")
	public String addseller(
			@RequestParam("nickname") String nickname, 
			@RequestParam(value="profileImageUrl",required =false) String profileImageUrl, 
			@RequestParam("temperature") double temperature) {
		
		addsellerBO.addseller(nickname, profileImageUrl, temperature);
		return"lessonquiz02/after_add_seller";
		
	}
	//http://localhost:8080/lesson04/quiz01/seller_info
	@GetMapping("/quiz01/seller_info")
	public String getsellerview(Model model) {
		
		AddSeller addseller = addsellerBO.getlastseller();
		model.addAttribute("result", addseller);
		model.addAttribute("subject", "판매자 정보");
		
		return"lessonquiz02/getlastseller";
		
	}

}
