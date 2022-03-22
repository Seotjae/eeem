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
		 padding: 0px;
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
		
		
	
	
	</style>
</head>
<body id="myPtEx">
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<br/><br/><br/><br/><br/><br/>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
			</div>
			
			<div class="col-md-8" >
<!-- ================충전 환전 탭======================================================================== -->
				<div class="row" id="tabBox">
					<div class="col-md-1" onclick="location.href='#'">
						<p>충전하기</p>
					</div>
					<div id="selectedTab" class="col-md-1" onclick="location.href='pointExchangeForm'">
						<p>환전하기</p>
					</div>
				</div>
				<hr id="tabHr"/>
<!-- ================아이디======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>아이디</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-6" id="centCol">
						<p>${loginId}</p>
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
					<div class="col-md-2" id="centCol">
						<input type="text" placeholder="은행명" class="form-control" style="width:95%;" maxlength="9"/>
					</div>
					<div class="col-md-4" id="centCol">
						<input type="text" placeholder="계좌번호를 입력하세요" class="form-control" maxlength="35" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
					</div>
				</div>

<!-- ================계좌번호 확인======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>계좌번호 확인</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-2">
					</div>
					<div class="col-md-4" id="centCol">
						<input type="text" placeholder="계좌번호를 다시 입력하세요" class="form-control" maxlength="35" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
					</div>
				</div>
				<hr/>
				
				
<!-- ================환전할 포인트======================================================================== -->
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>환전할 포인트</p>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-2" id="centCol">
						<input type="text" placeholder="포인트를 입력하세요." class="form-control"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
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
					<div class="col-md-6" id="centCol">
					</div>
				</div>
				<hr id="tabHr"/>
				
				
<!-- ================요청======================================================================== -->		
				<div class="row">
					<div class="col-md-2">
					</div>
					<div class="col-md-8" id="centerAlign">
						<input type="button" value="요청"/>
					</div>
					<div class="col-md-2">
					</div>
				</div>
				
				
				
				
				
			</div>
			<div class="col-md-2">

			</div>
		
		</div>
		
		
		
	</div>
	
</body>
<script>
</script>
</html>