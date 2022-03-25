<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->


<!-- =====페이징===================================================================================== -->
<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="resources/paging/jquery.twbsPagination.js"></script>
<!-- =====페이징===================================================================================== -->
	<style>
	.question {
	color : #89B8FF;
	}
	

		
		
	
	
	</style>
</head>
<body id=queBody>
 <%@ include file="/WEB-INF/views/include/header.jsp" %> 

<br/><br/><br/><br/><br/><br/><br/><br/>

<div class="container-fluid">

		<div class="row">
			<div class="col-md-2">
			</div>
				<div class="col-md-8">
					<div class="row" id="row1">
						<div class="col-md-12">
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
						</div>
						<div class="col-md-3">
								<h5 class="question">문의하기</h5>
						</div>
						<div class="col-md-1">
						</div>
						<div class="col-md-1">
						</div>
						<div class="col-md-2">
						</div>
						<div class="col-md-2">
						</div>
					</div>
						<hr/>
					<div class="row">
						<div class="col-md-12">
						</div>
					</div>
					
					 	<form id="queWriteForm" action="queWrite" method="post">
					 
					<div class="row">
						<div class="col-md-3">
						</div>
						<div class="col-md-1">
							<p align="center">
								ID 
							</p>
						</div>
						<div class="col-md-2">
							<p align="center">
								<%-- <input name="mem_id" class="form-control" type="text" 
				              placeholder="${mem_id}" value="${mem_id}" readonly> --%>
				            	 ${mem_id}
							</p>
						</div>
						<div class="col-md-1">
							<p align="center">
								이메일
							</p>
						</div>
						<div class="col-md-3">
							<p>
					<%-- 		<input name="mem_email" class="form-control" type="text" 
				              placeholder="${mem_email}" value="${mem_email}" readonly> --%>
				              ${mem_email}
							</p>
						</div>
						<div class="col-md-2">
						</div>
					</div>
						<hr/>
					<div class="row">
						<div class="col-md-12">
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
						</div>
						<div class="col-md-1">
							<p align="center">제목</p>
						</div>
						<div class="col-md-2">
							<select class="form-control" name="que_category"  id= "queCategory" >
				                                 	<option value="n">문의 분류</option>
				                                	<option value="0">회원</option>
				                                	<option value="1">모임</option>
				                                	<option value="2">포인트</option>
				                                	<option value="3">기타</option>
				                            </select>
						</div>
						<div class="col-md-4">
							<p>
								<input name="que_subject" id = "queSubject" class="form-control" placeholder="제목을 입력해주세요" type="text"/>
							</p>
						</div>
						<div class="col-md-2">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
						</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-md-3">
						</div>
						<div class="col-md-1">
							<p align="center">내용&lowast;</p>
						</div>
						<div class="col-md-6">
							   <textarea name="que_content" type="text" style="height: 190px;" 
				              class="form-control" placeholder="문의 내용을 입력해주세요." 
				              id="queContent" cols="45" rows="8" required=""></textarea>
						</div>
						<div class="col-md-2">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
						</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-md-2">
						</div>
						<div class="col-md-2">
						</div>
						<div class="col-md-1">
						</div>
						<div class="col-md-2">
							<input type="button" value="작성하기" onclick="quebtn()" id="queBtn" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" />
						</div>
						<div class="col-md-1">
						</div>
						<div class="col-md-2">
						</div>
						<div class="col-md-2">
						</div>
					</div>
					</form>
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
 function quebtn() {	 
		if ($('#queSubject').val() == '') {
			alert('제목을 입력해주세요.');
			$('#queSubject').focus();
		}else if ($('#queContent').val() == ''){
			alert('내용을 입력해주세요');
			$('#queContent').focus();
		}else if ($('#queCategory').val() == 'n') {
			alert('문의 종류를 선택해주세요.');
			$('#queCategory').focus();
			}else{
			$($('#queWriteForm').submit());
		}
	} 
</script>


</html>
