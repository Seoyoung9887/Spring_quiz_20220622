<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<table class="table  text-center">
			<thead>
			
				<tr>
					<td>No</td>
					<td>이름</td>
					<td>전화번호</td>
					<td>국적</td>
					<td>이메일</td>
					<td>자기소개</td>
				</tr>
			

			</thead>
			<tbody>
			<thead>
			 <c:forEach var="member" items="${members}" varStatus="stauts">
				<tr>
                    <td>${stauts.count}</td>
                    <td>
                    <c:choose>
                    <c:when test="${fn:startsWith(member.phoneNumber,'010') == true }">
                       ${member.phoneNumber}
                    </c:when>
                    <c:when test="${fn:startsWith(member.phoneNumber,'010') == false }">
                       유효하지 않는 전화번호
                    </c:when>
                    
                    </c:choose>
                    </td>
                    <td>${fn:replace (member.nationality,'시대' ,' -')}</td>
                    <td><strong>${fn:split(member.email,'@')[0]}</strong>@${fn:split(member.email,'@')[1]}</td>
                    <td>
                    <c:if test="${fn:length(member.introduce) > 15 }">
                        ${fn:substring(member.introduce,0,15)}...
                    </c:if>
                     <c:if test="${fn:length(member.introduce) <= 15 }">
                        ${member.introduce}
                    </c:if>
                    </td>
                                  
                  </tr>
            </c:forEach>
            </tbody>
			
            
         
         
		</table>
    
    </div>

</body>
</html>