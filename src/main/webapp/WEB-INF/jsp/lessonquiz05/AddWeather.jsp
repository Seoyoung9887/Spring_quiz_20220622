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


<link rel="stylesheet" type="text/css" href="/css/lesson05_quiz05">
</head>
<body>
	<div id="wrap" class="">
		<div class="contents d-flex">
			<nav class=" bg-primary col-2 ">
				<%--로고 영역 --%>
				<div class="d-flex justify-content-center">
					<img class=""
						src="https://cdn.imweb.me/thumbnail/20220429/b61a12701a934.png"
						width="100">
				</div>
				<%--메뉴 영역 ul(nav),il(nav-item),a(nav-link) --%>
				<ul class="nav  flex-column ">
					<li class="nav-item"><a class="nav-link text-white" href="#">날씨</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">날시입력</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">태마날씨</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">관측기후</a></li>
				</ul>
			</nav>
			<section class="right col-10">
				<strong><h3>날씨 입력</h3></strong>
				<h3>날씨 입력</h3>
				<form method="post" action="/lesson05/add_weather">
					<div class="d-flex justify-content-between mt-5">
						<div class="d-flex align-items-center">
							<div class="input-label">날짜</div>
							<input type="text" class="form-control" id="date" name="date">
						</div>
						<div class="d-flex align-items-center">
							<div class="input-label">날씨</div>
							<select class="form-control" name="weather">
								<option>맑음</option>
								<option>구름조금</option>
								<option>흐림</option>
								<option>비</option>
							</select>
						</div>

						<div class="d-flex align-items-center">
							<div class="input-label">미세먼지</div>
							<select class="form-control" name="microDust">
								<option>좋음</option>
								<option>보통</option>
								<option>나쁨</option>
								<option>최악</option>
							</select>
						</div>
					</div>

					<div class="d-flex justify-content-between mt-5">
						<div class="d-flex align-items-center">
							<div class="input-label">기온</div>
							<div class="input-group">
								<input type="text" class="form-control" name="temperatures">
								<div class="input-group-append">
									<span class="input-group-text">℃</span>
								</div>
							</div>
						</div>
						<div class="d-flex align-items-center">
							<div class="input-label">강수량</div>
							<div class="input-group">
								<input type="text" class="form-control" name="precipitation">
								<div class="input-group-append">
									<span class="input-group-text">mm</span>
								</div>
							</div>
						</div>

						<div class="d-flex align-items-center">
							<div class="input-label">풍속</div>
							<div class="input-group">
								<input type="text" class="form-control" name="windSpeed">
								<div class="input-group-append">
									<span class="input-group-text">km/h</span>
								</div>
							</div>
						</div>
					</div>

					<div class="text-right mt-4 mb-5">
						<input type="submit" class="btn btn-success" value="저장">
					</div>
				</form>
			</section>

		</div>
		<footer class="d-flex align-items-center">
			<div class="d-flex justify-content-center col-2 m-1">
				<img class=""
					src="https://cdn.imweb.me/thumbnail/20220429/b61a12701a934.png"
					width="150">
			</div>
			<div class="col-10">
				<tr>
					<td>(07062)서울시 동작구 여의대방로16길61</td>
					<br>
					<td>Copyright@2020 KMA. ALL Rights RESERVED</td>
				</tr>

			</div>

		</footer>
	</div>
<script>
// ready 함수: DOM tree가 모두 구성된 후 불려지는 함수 
$(document).ready(function(){
	//datepicker
	$("#date").datepicker({
		dateFormat:"yy-mm-dd"// 표시 포멧
		,changeYear:true
		,changeMonth:true
	});
});

</script>
</body>
</html>