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
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>	
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
			<a href="javascript:history.back();">
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
							<div class="col-md-4">
								<p>모임정보</p>
							</div>
							<div class="col-md-4">
							</div>		
							<div class="col-md-2">
							</div>
						</div>	<br/>	
						
										
						<div class="row">
							<div class="col-md-2">
							</div>
							<div class="col-md-8">
								<div class="row">
									<div class="col-md-5">
										<div class="row">
											<div class="col-md-12" style="text-align: right;">
												<img src="resources/meetPhoto/${meetdto.meet_thum}" width ="200px" height="250px"/>
											</div>
										</div>
									</div>
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-12" >
												<p style="text-align: left; font-size:30px;">${meetdto.mem_name}</p>
											</div>
										</div><br/><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">개설자 : ${meetdto.mem_id} <!--  ${meetdto.meet_id}*--></p>
											</div>
										</div><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">모임인원 : ${meetdto.meet_totalPrs} <!--  ${meetdto.mem_id}*-->명</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">모임기간 :<span id="date">${meetdto.meet_start} ~ ${meetdto.meet_end}</span></p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">모임장소: <span id="region">${meetdto.meet_region}</span></p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-2">
							</div>						
						</div>
					
						
					</div>					
				</div><br/>
				<hr/>
				
			
				<div class="row" id="myTbody">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-2">
							</div>
							<div class="col-md-8">
								<div class="row">
									<div class="col-md-3">
										<h4>개설자 정보</h4>
									</div>
									<div class="col-md-6">
									</div>
									<div class="col-md-3">
										<button>평가 완료하기</button>
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
								
								
							<div id="list">
								<div class="row">
									<div class="col-md-2">
										<p>${meetdto.mem_name}</p>
									</div>
									<div class="col-md-2">
										<p>${meetdto.mem_id}</p>
									</div>
									<div class="col-md-4">
										<p>${meetdto.meet_phone}</p>
									</div>
									<div class="col-md-4">
										<p>★★★★★</p>
									</div>
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
	</div>					
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}
</script>

</html>