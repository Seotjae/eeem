<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>포인트환전</title>
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
		#myPtEx div {
		 /* padding: 0px; */
		}
		#myPtEx .row{
			margin:0px;
		}
		#myPtEx #tabBox div{
			height: 40px;
			padding: 0px;
			background-color: 89B8FF;
			margin-right: 10px;
			border-radius: 5px;
		}
		#myPtEx #tabBox div:hover,#myPtEx #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPtEx #tabBox p{
			font-family: Poppins-Bold;
			line-height:45px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 15px;
			font-weight: 600;
			color : white;
			border-radius: 5px;
			
		}
		#myPtEx #selectedTab, #myPtEx #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		#myPtEx #tabHr{
			border-top: 2px solid rgba(0,0,0,.5);
		}
		
		#myPtEx #leftCol{
			display: flex;
			align-items: center;
			justify-content: center;
			height: 50px;
			border-right: 1px solid rgba(0,0,0,.2);
		}
		
		#myPtEx #centCol{
			display: flex;
			align-items: center;
			height: 50px;
		}
		
		#myPtEx #centerAlign{
			display: flex;
			align-items: center;
			justify-content: center;
		}
		
		/* 요청버튼 css */
		#submitBtn{
			width: 60px;
			height: 35px;
			border-radius: 10px;
		}
		
		/* 계좌번호 재확인 라벨 */
		#myPtEx #ptReAcLb{
			margin: 0px;
		}
		#ptReAcLb p{
			font-size: 12px;
			padding-top:2px;
			padding-left: 10px;
			color: red;
		}
		#myPtEx .form-group{
			margin: 0px;
		}
		#myPtExContainer div{
			padding:10px 0px;
		}
	
	</style>
</head>
<body id="myPtEx">
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<br/><br/><br/><br/><br/><br/>
	<div class="container-fluid" id="myPtExContainer">
		<div class="row">
			<div class="col-md-4">
			</div>
			
			<div class="col-md-4" >
<!-- ================충전 환전 탭======================================================================== -->
				<div class="row">
					<div class="col-md-12" id="centCol" style="justify-content: center;">
						<p style="font-size: 18px;"><b>환전 요청 결과</b></p>
					</div>
				</div>
				<hr id="tabHr"/>
				
				
				
<!-- ================아이디======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>요청자</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-6" id="centCol">
						<p>${params.mem_id}</p>
					</div>
				</div>
				<hr/>
				
				
<!-- ================계좌번호======================================================================== -->
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>계좌번호</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-9" id="centCol">
						<p>${params.pt_bank} &nbsp; ${params.pt_account}</p>
					</div>
				</div>
				<hr />

			
				<!-- ================환전 금액======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>환전 금액</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-9" id="centCol">
						<p>${params.pt_count} &nbsp;</p>원
					</div>
				</div>
				<hr id="tabHr"/>
				
<!-- ================확인======================================================================== -->		
				<div class="row">
					<div class="col-md-2">
					</div>
					<div class="col-md-8" id="centerAlign">
						<input id="submitBtn" type="button" value="확인" onclick="location.href='./'"
							class="flex-c-m stext-101 cl0 bg3 hov-btn3 p-lr-15 trans-04 pointer"/>
					</div>
					<div class="col-md-2">
					</div>
				</div>

	
			</div>
			<div class="col-md-4">

			</div>
		
		</div>
		
		
		
	</div>
	
</body>
<script>







</script>
</html>