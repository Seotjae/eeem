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
		#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab2,#tab3,#tab4,#tab5{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: 89B8FF;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		
		#tab1:hover,#tab2:hover,#tab3:hover,#tab4:hover,#tab5:hover{
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
		#PointTable{
			width: 1200px;
			
			/*위치*/
			position: absolute;
			margin-top: 250px;
			margin-left: 250px;
			
		}
		#pointList{
			border: 1px solid black;
			border-collapse: collapse;
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
                       
                       	<div id="PointTable">
                       	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       	포인트 사용 내역</b><hr/>
                       	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	                       	
                       	${loginId} 님의 포인트 변동 내역</b><br/><br/>
							<table>									
								<tr>
									<th style="width: 200px; text-align: center;">날짜</th>
									<th style="width: 200px; text-align: center;">변경사유</th>
									<th style="width: 200px; text-align: center;">변동전 포인트</th>
									<th style="width: 200px; text-align: center;">사용 포인트</th>
									<th style="width: 200px; text-align: center;">변동후 포인트</th>
									<th style="width: 200px; text-align: center;">모임번호</th>
								</tr>
								<tbody id="pointList"></tbody>
								<tr>
									<td colspan="6" id="paging" >
										<div class="container">                           
							               <nav aria-label="Page navigation" style="text-align:center;">
							                  <ul class="pagination" id="pagination"></ul>
							               </nav>               
							            </div>
									</td>
								</tr>
							</table>
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