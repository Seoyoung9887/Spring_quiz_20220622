<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<link rel="stylesheet" type="text/css" href="/css/lesson06_booking.css">
</head>
<body>
     <div class="container">
        <span class="text-center"><h1>통나무 팬션</h1></span>
        <nav class="bg-warning">
				<ul class="nav d-flex justify-content-between ">
					<li class="nav-item"><a class="nav-link menu-font" href="#">팬션소개</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="/lessonquiz05/AddWeather">객실보기</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">예약하기</a></li>
					<li class="nav-item"><a class="nav-link menu-font" href="#">예약목록</a></li>
				</ul>
			</nav>
			<span class="text-center m-1"><Strong><h2>예약 목록 보기</h2></Strong></span>
			<table class= "table text-center">
			   <thead>
			       <tr>
			         <td>이름</td>
			         <td>예약날짜</td>
			         <td>숙박일수</td>
			         <td>숙박인원</td>
			         <td>전화번호</td>
			         <td>예약상태</td>
			         <td></td>
			       </tr>
			   </thead>
			   <tbody>
			   <c:forEach var="booking" items="${bookinglist}">
			     <tr>
			        <td>${booking.name}</td>
			        <td><fmt:formatDate value="${booking.date}" pattern="yyyy년M월d일"/></td>
										
			        <td>${booking.day}</td>
			        <td>${booking.headcount}</td>
			        <td>${booking.phoneNumber}</td>
			        <td>
			        <c:choose>
			          <c:when test="${booking.state eq '확정'}">
			          <span class="text-success">${booking.state}</span>
			          </c:when>
			          <c:when test="${booking.state eq '대기중'}">
			          <span class="text-primary">${booking.state}</span>
			          </c:when>
			        </c:choose>
			        </td>
			        <td><button type="button" class="del-Btn btn-danger" data-booking-id="${booking.id}">삭제</button></td>
			         
			     </tr>
			    </c:forEach>
			   
			   </tbody>
			
			</table>
			
			 <footer>	 
			   <span class="text">제주특별자치도 제주시 애월읍<br>
			   사업자등록번호:111-22-233222/농어촌민박사업자지정/대표:김통목<br>
			   Copyright 2025 tongnamu.All right reserved</span>
			 </footer>
			
		
     </div>
<script>
$(doucment).ready(function(){
	$('.del-Btn').on('click',function(){
		let bookingid = $(this).data('booking-id');
		
		$ajax({
			type:"POST"
			,url:"/lesson06/delete_booking"
			,data:{"id":bookingid}
		
		    ,success:function(data){
		    	if(data.result == "success"){
		    		
		    		location.reload(true);
		    	}else{
		    		alert("실패하셨습니다")
		    	}
		    }
		    ,error:function(e){
		    	alert("통신에 실패")
		    }
		});
	});
	
});
</script>
</body>
</html>