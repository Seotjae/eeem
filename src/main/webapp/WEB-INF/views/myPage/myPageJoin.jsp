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
		#tab4{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab1,#tab2,#tab3,#tab5,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageJoin #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageJoin #tabBox div:hover,#myPageJoin #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageJoin #tabBox{
			background-color: 89B8FF;
		}
		#myPageJoin #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPageJoin #myPageJoinContainer div{
			padding: 0px;
		}
		
		#myPageJoin #selectedTab, #myPageJoin #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPageJoin #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPageJoin #myTbody{
			text-align: center;
			font-size: 14px;

		}
	</style>
</head>
<body id="myPageJoin">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageJoinContainer">
		<!-- ========================================상단 탭========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>회원정보 수정</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageLike'">
						<p>즐겨찾기</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>개설한 모임</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='myPageJoin'">
						<p>신청한 모임</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageQna'">
						<p>내가 작성한 문의</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPagePoint'">
						<p>포인트 내역</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		
		<!-- ========================================페이지 내용========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-2">
						<p>내가 신청한 모임</p>
					</div>
					<div class="col-md-6">
					</div>
					<div class="col-md-4">
						<p>${loginId} 님의 참여자 평점 : ${joinStar}</p>
					</div>
				</div>
				<hr/>
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>날짜</p>
					</div>
					<div class="col-md-2">
						<p>변경사유</p>
					</div>
					<div class="col-md-2">
						<p>변동전 포인트</p>
					</div>
					<div class="col-md-2">
						<p>사용 포인트</p>
					</div>
					<div class="col-md-2">
						<p>변동후 포인트</p>
					</div>
					<div class="col-md-1">
						<p>모임번호</p>
					</div>
				</div>
				<hr/>
				<div class="row" id="myTbody">
					<div class="col-md-2">
						<p>날짜</p>
					</div>
					<div class="col-md-2">
						<p>변경사유</p>
					</div>
					<div class="col-md-2">
						<p>변동전 포인트</p>
					</div>
					<div class="col-md-2">
						<p>사용 포인트</p>
					</div>
					<div class="col-md-2">
						<p>변동후 포인트</p>
					</div>
					<div class="col-md-1">
						<p>모임번호</p>
					</div>
				</div>
				<hr/>
			</div>
			<div class="col-md-2">
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