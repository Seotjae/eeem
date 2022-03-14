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
		#tab{
			/*여백*/
  			margin-top: 120px;
  			
  			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
		}
		#tab1{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: 89B8FF;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;
			
			/*위치*/
			position: absolute;
			margin-left: -50px;
		}
		#tab2{
			/*위치*/
			position: relative;
			margin-left: 100px;
		}
		#tab3{
			/*위치*/
			position: relative;
			margin-left: 250px;
			margin-top: -50px
		}
		#tab4{
			/*위치*/
			position: relative;
			margin-left: 400px;
			margin-top: -50px;
		}
		#tab5{
			/*위치*/
			position: relative;
			margin-left: 550px;
			margin-top: -50px;
		}
		#tab6{
			/*위치*/
			position: relative;
			margin-left: 700px;
			margin-top: -50px;
		}
		#tab2{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab3,#tab4,#tab5,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: 89B8FF;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		
		#tab1:hover,#tab3:hover,#tab4:hover,#tab5:hover,#tab6:hover{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		hr { 
		  display: block;
		  margin-top: 0.5em;
		  margin-bottom: 0.5em;
		  margin-left: auto;
		  margin-right: auto;
		  border-style: inset;
		  border-width: 100%;
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
  			margin-top: 200px;	
  			
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
		
		#check{
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
		}
	</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section>
           <div>
               <div>
                   <div>
                       <nav>
                           <div id="tab">
                               <div id="tab1" onclick="location.href='http://localhost:8080/eeem/myPageUpdate'" style="cursor:pointer;">회원정보수정</div>
                               <div id="tab2" onclick="location.href='http://localhost:8080/eeem/myPageLike'" style="cursor:pointer;">즐겨찾기</div>
                               <div id="tab3" onclick="location.href='http://localhost:8080/eeem/myPageMake'" style="cursor:pointer;">개설한 모임</div>
                               <div id="tab4" onclick="location.href='http://localhost:8080/eeem/myPageJoin'" style="cursor:pointer;">신청한 모임</div>
                               <div id="tab5" onclick="location.href='http://localhost:8080/eeem/myPageQna'" style="cursor:pointer;">내가 작성한 문의</div>
                               <div id="tab6" onclick="location.href='http://localhost:8080/eeem/myPagePoint'" style="cursor:pointer;">포인트 내역</div>
                           </div>
                       </nav> 
                       <div id="box1">
	                       <br/><br/><br/>
	                       <div id="text1">비밀번호 확인</div>
	                       <br/>
	                       <div id="text2">*본인 확인을 위해 <span style="color:red; text-decoration: underline;">비밀번호</span>를 한번더 입력해주세요</div>
	                       <br/><br/>
	                       <div id="box2">비밀번호</div>
	                       <br/>
	                       <form action="myPageUpdateForm" method="post">
		                       <input id="textbox" type="password" name="mem_pw"  placeholder="비밀번호 입력"/> 
		                       <br/><br/><br/><br/>
		                       <button id="check">확인</button>
	                       </form>
                       </div>
                   </div>
               </div>
           </div>
       </section>
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}
</script>

</html>