<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>EEEm</title>
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
	<style>
		#back{
			margin-left: 140px;
		}
	
		#myPageRate #myPageJoinContainer div{
			padding: 0px;
		}
				
		#myPageRate #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPageRate #myTbody{
			text-align: center;
			font-size: 14px;

		}
	</style>
</head>
<body id="myPageRate">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageRateContainer">
		
		<br/><br/>		
		<!-- ========================================페이지 내용========================================= -->
		<div id="back">
			<a target="_blank" href="">
				<img src="" width ="50px" height="50px"/>
			</a>
		</div><br/>
		<div class="row">
			<div class="col-md-1">
			</div>
			<div class="col-md-10">
				<div class="row" >
					<div class="col-md-2">
						<p>평가하기</p>
					</div>
					<div class="col-md-6">
					</div>
					<div class="col-md-4">		
					</div>
				</div>
				<hr/>
				
				
				<div class="row" id="myThead">
					<div class="container-fluid">					
						<div class="row">
							<div class="col-md-2">
							</div>
							<div class="col-md-8">
								<div class="row">
									<div class="col-md-4">
										<p>모임정보</p>
										<div class="row">
											<div class="col-md-12">
												<p>이미지</p>
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="row">
											<div class="col-md-12">
												<p>모임제목</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p>개설자</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p>모임인원</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p>모임기간</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p>모임장소</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-2">
							</div>						
						</div>
					</div>					
				</div>
				<hr/>
				
				
				<div class="row" id="myTbody">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-2">
							</div>
							<div class="col-md-8">
								<div class="row">
									<div class="col-md-3">
										<p>참여자정보</p>
									</div>
									<div class="col-md-6">
									</div>
									<div class="col-md-3">
										<p>평가 완료하기</p>
									</div>
								</div><br/>
								<div class="row">
									<div class="col-md-2">
										<p>이름</p>
									</div>
									<div class="col-md-2">
										<p>아이디</p>
									</div>
									<div class="col-md-4">
										<p>전화번호</p>
									</div>
									<div class="col-md-4">
										<p>평가점수</p>
									</div>
								</div><hr/>
								<div class="row">
									<div class="col-md-2">
										<p>이름</p>
									</div>
									<div class="col-md-2">
										<p>아이디</p>
									</div>
									<div class="col-md-4">
										<p>전화번호</p>
									</div>
									<div class="col-md-4">
										<p>평가점수</p>
									</div>
								</div>
							</div>
							<div class="col-md-2">
							</div>
						</div>
					</div>					
				</div>				
			</div>
			<div class="col-md-1">
			</div>
		</div>	
			
<!-- ========================================페이징 버튼========================================= -->		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div id="paging">
		            <div class="container">                           
		               <nav aria-label="Page navigation" style="text-align:center">
		                  <ul class="pagination" id="pagination"></ul><br/>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	</div>					
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}

</script>

</html>