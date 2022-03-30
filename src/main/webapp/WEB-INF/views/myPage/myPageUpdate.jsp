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
		#tab1{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab2,#tab3,#tab4,#tab5,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageUpdate #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageUpdate #tabBox div:hover,#myPageUpdate #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageUpdate #tabBox{
			background-color: 89B8FF;
		}
		#myPageUpdate #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPageUpdate #myPageUpdateContainer div{
			padding: 0px;
		}
		
		#myPageUpdate #selectedTab, #myPageUpdate #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#box1{
			/*박스크기*/
			width: 430px;
			height: 500px;
			
			/*박스색깔*/
			background-color: 89B8FF;
			
			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
  			
  			/*여백*/
  			margin-top: 50px;	
  			
		}
		
		#text1{		
			/*글자*/
			font-size: 30px;
			color : white;
		}
		
		#text2{
			/*글자*/
			font-size: 14px;
			color : white;
			text-decoration: underline;
		}
		
		#box2{
			/*박스범위*/
			border : 1px solid gray;
			border-collapse: collapse;
			
			/*왼쪽 정렬*/
			text-align: left;
			margin-left: 54px;
			position: absolute;
  			
  			/*박스크기*/
			width: 82px;
			height: 30px;
			margin-top:-6px;
			
			/*박스색깔*/
			background-color: white;
			
			/*글자*/
			text-align: center;
			padding-top: 3px;
		}
		
		#textbox{		
			/*박스크기*/
			width: 320px;
			height: 60px;
			margin-left: 55px;
			
			/*글자*/
			font-size: 20px;
			text-align: center;
		}
		
/* 		#check{
			/*박스범위*/
			border : 1px solid black;
			border-collapse: collapse;
			
			/*박스크기*/
			width: 150px;
			height: 40px;
			border-radius: 20px;
			
			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
  			
			/*박스색깔*/
			background-color: white;
			
			/*글자*/
			font-size: 20px;
			padding-top: 4px;
			text-align: center;
			color: black;
			
			/*마우스 오버*/
			cursor: pointer;
		} */
		
	</style>
</head>
<body id="myPageUpdate">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageUpdateContainer">
		<!-- ========================================상단 탭========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div  id="selectedTab" class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>회원정보 수정</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageLike'">
						<p>즐겨찾기</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>개설한 모임</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageJoin'">
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
		
		<!-- ========================================페이지 내용========================================= -->

		<div id="box1">
		<br/><br/><br/>
			<div id="text1">비밀번호 확인</div>
			<br/>
			<div id="text2">*본인 확인을 위해 <span style="color:red; text-decoration: underline;">비밀번호</span>를 한번더 입력해주세요</div>
			<br/><br/>
			<div id="box2">비밀번호</div>
			<br/>
			<form id="checkBtn" action="myPageUpdateForm" method="post">
				<input id="textbox" type="password" name="mem_pw"  placeholder="비밀번호 입력" value=""/> 
				<br/><br/><br/><br/>
				<input type="button" id="check" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" style="margin: 0 auto; 
				width:150; height: 40px; font-size: 20px; font-weight: 600;" value="확인" onclick="chk()"/>
			</form>
		</div>
	</div>
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}

function chk() {
	if ($("#textbox").val() == '') {
		alert('비밀번호를 입력하세요.');
		$('#textbox').focus();
	}else{
	$($('#checkBtn').submit());
	}
}
</script>

</html>