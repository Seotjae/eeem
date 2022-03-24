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
		
		/* 라디오 버튼 */
		    #inputInter label, #inputRegion label, #inputGender label{
            color: black;
            font-size: 14px;
            font-weight: 400;
        }
		
		
		     #testFix #inputInter label, #testFix #inputRegion label, #testFix #inputGender label
        ,#testFix #inputInter input, #testFix #inputRegion input, #testFix #inputGender input {
        display : inline-block;
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
				<div class="row" id="tabBox" style="display : none">
				
					<div class="col-md-1" onclick="location.href='pointChargeForm'">
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
						<input  class="form-control" type="text" 
              placeholder="${loginId}" value="${loginId}" readonly>
					</div>
				</div>
				<hr/>
				
				
<!-- ================계좌번호======================================================================== -->
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>충전 금액</p>
					</div>
					<div class="col-md-1" ">
					</div>
					
					<div class="col-md-6">
					 ${pt_count}
					</div>
				</div>
				<hr/>
				<!-- ================환전 금액======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>보유 포인트</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-6" id="radioResult">
						${chargePoint}
					</div>
				</div>
				<hr id="tabHr"/>
				
				
<!-- ================요청======================================================================== -->		
				<div class="row">
					<div class="col-md-2">
					</div>
					<div class="col-md-8" id="centerAlign">
						<input type="button" value="돌아가기" onclick="pointSub()"/>
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




 function pointSub(){
		var yn  = confirm("마이 페이지로 돌아가시겠습니까?");
		
		if(yn){
			
			location.href='./myPagePoint';
		}
	}
 
 
 $('input[name="pt_count"]').click(function () {
	var pt_count = $(this).val();
	$.ajax({
		type:'get',
		url:'pointRadio',
		data:{'pt_count':pt_count},	
		datatype:'JSON',
		success:function(data){
			
			var html = data.pt_count;

			$('#radioResult').html(html);

			console.log(data);
			
		},
		error:function(e){
			 console.log(e);
			 
			alert('실패')
		}
	});
});
 
	




</script>
</html>