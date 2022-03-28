<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
		<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<style>
		
		p{
			font-family:none;
			text-align: center;
			font-size: 15px;
			color : black;	
		}
		/* 글쓰기 */
		.textarea{
		border: 1px solid #89B8FF;
		width: 300px;
    	height: 110px;
    	resize: none;
		}
		
		.questionDetail{
			color : #89B8FF;
		}
	
	</style>
</head>
<body>
 <%@ include file="/WEB-INF/views/include/header.jsp" %> 

<br/><br/><br/><br/><br/><br/>

 <div class="container-fluid" id="queDetail">	
 	<div class="row">
	 	<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-2">
					<div id="back" style="height: 50px;">
						<!-- <a href="javascript:history.back();"> -->
						<a href="javascript:history.back();">
							<img src="resources/images/icons/backimage.png" width ="40px" height="20px"/>
						</a>
					</div>
				</div>
				<div class="col-md-8">
				</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
				<h5 class="questionDetail">
					문의 상세보기
				</h5>
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
			</div>
		</div>
			<hr style="height:5px;"/>
		<!-- <hr style="width:100%;height:10px;border:none;background-color:blue;"/> -->
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<!-- <div class="col-md-1"  style="height:50px;"> -->
			<div class="col-md-1"  style="height:50px;">
				<p>
					ID : 
				</p>
			</div>
			<div class="col-md-3">
				<p>
					 ${question.mem_id}
				</p>
			</div>
			<div class="col-md-2">
				<p>
					문의분류 :
				</p>
			</div>
			<div class="col-md-2">
				<p>
		           <c:choose>
		            <c:when test="${question.que_category eq 0 }">
		               회원
		            </c:when>
		            <c:when test="${question.que_category eq 1 }">
		               모임
		            </c:when>
		            <c:when test="${question.que_category eq 2 }">
		               포인트
		            </c:when>
		            <c:when test="${question.que_category eq 3 }">
		               기타
		            </c:when>
		         </c:choose>
				</p>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-1" style="height:50px;">
				<p>
					이름 :
				</p>
			</div>
			<div class="col-md-3">
				<p>
					 ${mem_name}
				</p>
			</div>
			<div class="col-md-2">
				<p>
					처리상태 :
				</p>
			</div>
			<div class="col-md-2">
				<p>
					<!-- 만약 처리 상태가 1이라면 처리 완료 상태가 1이 아니라면 처리 전. -->
					<c:choose>
	            	<c:when test="${question.que_state eq 1 }">
	               	처리 완료
	            	</c:when>
	            	<c:when test="${question.que_state ne 1 }">
	               	처리 전
	            	</c:when>
	         		</c:choose>
				</p>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-1" style="height:50px;">
				<p>
					이메일 :
				</p>
			</div>
			<div class="col-md-3">
				<p>
					  ${mem_email}
				</p>
			</div>
			<div class="col-md-2">
				<p>
					처리자 :
				</p>
			</div>
			<div class="col-md-2">
				<p>
					<c:choose>
	            	<c:when test="${question.que_admin eq 'noData'}">
	               	-
	            	</c:when>
	            	<c:when test="${question.que_admin ne 'noData'}">
	               	${question.que_admin}
	            	</c:when>
	         		</c:choose>	
				</p>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-1" style="height:50px;">
				<p>
					제목 :
				</p>
			</div>
			<div class="col-md-3">
				<p>
					${question.que_subject}
				</p>
			</div>
			<div class="col-md-6">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-1" style="height:20px;">
				<p>
					내용
				</p>
			</div>
			<div class="col-md-3">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
				<button type="button" onclick="del()" class="btn btn-link">
					삭제
				</button>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
		<div class="row">
		
				<hr width = "100%"/>
			
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<%-- <textarea id="dec_content" placeholder="내용" class="form-control" readonly>
				${question.que_content}
				</textarea>  --%>
				<p style ="text-align: left;" >
				${question.que_content}
				</p>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
		
		</div>
		<div class="col-md-2">
		</div>
 	</div>
</div>
</body>

<script>
 function del(){
		var yn = confirm("삭제하시겠습니까?");
		
		
		if(yn){
			location.href='./delete?que_num=${question.que_num}';
		}
	}
</script>
</html>



