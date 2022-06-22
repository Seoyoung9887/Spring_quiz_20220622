package com.quiz.lesson01;

import java.security.PublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/quiz02")
@RestController
public class Quiz02RestController {
	@RequestMapping("/1")
	public List<Map<String, Object>> quiz01_3(){
		List <Map<String,Object>> list = new ArrayList<>();
		Map<String,Object>map1 = new HashMap<>();
		map1.put("rate", 15);
		map1.put("directer", "봉준호");
		map1.put("time", 131);
		map1.put("title", "기생충");
		list.add(map1);
		Map<String,Object>map2 = new HashMap<>();
		map2.put("rate", 0);
		map2.put("directer", "로베르토 베니니");
		map2.put("time", 116);
		map2.put("title", "인생은 아름다워");
		list.add(map2);
		Map<String,Object>map3 = new HashMap<>();
		map3.put("rate", 19);
		map3.put("directer", "크로스토퍼 놀란");
		map3.put("time", 147);
		map3.put("title", "인셉션");
		list.add(map3);
		Map<String,Object>map4 = new HashMap<>();
		map4.put("rate", 19);
		map4.put("directer", "윤종빈");
		map4.put("time", 133);
		map4.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		list.add(map4);
		Map<String,Object>map5 = new HashMap<>();
		map5.put("rate", 15);
		map5.put("directer", "프란시스 로렌스");
		map5.put("time", 137);
		map5.put("title", "헝거게임");
		list.add(map5);
		
		return list;
	
	}
	@RequestMapping("/2")
	public List<Notice> quiz02_2() {
		List<Notice>arr = new ArrayList<>();
		Notice notice = new Notice();
		notice.setTitle("안녕하세요 가입인사 드립니다");
		notice.setUser("hagulu");
		notice.setContent("안녕하세요. 가입했습니다. 앞으로 잘부탁 드립니다");
		arr.add(notice);
		Notice notice2 = new Notice();
		notice2.setTitle("헐 대박");
		notice2.setUser("baba");
		notice2.setContent("오늘 목요일이 었어...금요일인줄");
		arr.add(notice2);
		Notice notice3 = new Notice();
		notice3.setTitle("오늘 데이트 한 이야기 해드릴게요");
		notice3.setUser("dulumary");
		notice3.setContent(".....");
		arr.add(notice3);
		return arr;
		
		
	}
	@RequestMapping("/3")
	public ResponseEntity<Notice> quiz02_3(){
		List<Notice>arr = new ArrayList<>();
		Notice notice = new Notice();
		notice.setTitle("안녕하세요 가입인사 드립니다");
		notice.setUser("hagulu");
		notice.setContent("안녕하세요. 가입했습니다. 앞으로 잘부탁 드립니다");
		return new ResponseEntity<>(notice, HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
