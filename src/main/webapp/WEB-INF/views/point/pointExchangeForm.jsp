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
					<div class="col-md-1" onclick="location.href='pointChargeForm'">
						<p>충전하기</p>
					</div>
					<div id="selectedTab" class="col-md-1" onclick="location.href='pointExchangeForm'">
						<p>환전하기</p>
					</div>
				</div>
				<hr id="tabHr"/>
				
				
				<!-- 요청 전송 -->
				<form id="rqstExchg" action="rqstExchg" method="post">
<!-- ================아이디======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>아이디</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-6" id="centCol">
						<p>${loginId}</p>
						<input type="hidden" name="mem_id" value="${loginId}">
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
						<input type="text" name="pt_bank" placeholder="은행명" class="form-control" style="width:95%;" maxlength="9"/>
					</div>
					<div class="col-md-4" id="centCol">
						<input type="text" id="pt_account" name="pt_account" placeholder="계좌번호를 입력하세요" class="form-control" 
							maxlength="35" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
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
					<div class="col-md-4">
						<div class="form-group">
							<input type="text" id="pt_reAccount"  placeholder="계좌번호를 다시 입력하세요" class="form-control" onkeyup="chkAcnt(event)"
								 maxlength="35" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
							<label id="ptReAcLb" for="pt_reAccount">
								<p></p>
							</label>
						</div>
					</div>
				</div>
				<hr/>
				
				
<!-- ================환전할 포인트======================================================================== -->
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>환전할 포인트</p>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-3" id="centCol">
						<input type="text" placeholder="포인트를 입력하세요." class="form-control" name="pt_count"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="20"/>
					</div>
					<div class="col-md-3" >
						<p style="margin-left:15px;margin-top:8px;font-size: 14px;"><b>보유한 포인트 : ${myPoint}</b></p>
						<p id="chkPointTxt" style="margin-left:16px;font-size: 12px;color:red;"></p>

					</div>
				</div>
				<hr />


				<!-- ================환전 금액======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>환전 금액</p>
					</div>
					<div class="col-md-8" id="centCol" style="justify-content: center;">
						<p><b id="ptMny">0</b> &nbsp;</p><b>원</b>
					</div>
				</div>
				<hr id="tabHr"/>
				
				</form>
<!-- ================요청======================================================================== -->		
				<div class="row">
					<div class="col-md-2">
					</div>
					<div class="col-md-8" id="centerAlign">
						<input id="submitBtn" type="button" value="요청" class="flex-c-m stext-101 cl0 bg3 hov-btn3 p-lr-15 trans-04 pointer"/>
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
/*===================입력한 포인트 view 다시 뿌려주기 및 유효성==========================================  */

var myPoint = ${myPoint};	

var chkPoint = false;
$('input[name="pt_count"]').keyup(function() {
	var pt_count =$(this).val();
	$.ajax({
		type:'get',
		url:'justPtView',
		data:{'pt_count':pt_count},
		dataType:'JSON',
		success: function(data) {
			//console.log(data.pt_count);
			$('#ptMny').html(data.pt_count);
		},
		error: function(e) {
			console.log(e);
		}
	});
	console.log(pt_count,':',myPoint);
	if (pt_count > myPoint) {
		$('#chkPointTxt').html('포인트가 부족합니다.');
		chkPoint = false;
	}else{
		$('#chkPointTxt').html('');
		chkPoint = true;
	}
});


/*===================계좌입력 유효성 검사==========================================  */
var chkAcntYN = false;
$('#pt_account').keyup(function() {
	if ($('#pt_reAccount').val() == '') {
		$('#ptReAcLb').children().html('계좌번호를 다시 입력해주세요.');
		$('#ptReAcLb').children().css('color','red');
		chkAcntYN = false;
	}else if ($(this).val() == $('#pt_reAccount').val()) {
		$('#ptReAcLb').children().html('계좌번호가 일치합니다.');
		$('#ptReAcLb').children().css('color','green');
		chkAcntYN = true;
	}else{
		$('#ptReAcLb').children().html('계좌번호가 일치하지 않습니다.');
		$('#ptReAcLb').children().css('color','red');
		chkAcntYN = false;
	}
});

function chkAcnt(e) {
	if (e.target.value == $('#pt_account').val()) {
		$('#ptReAcLb').children().html('계좌번호가 일치합니다.');
		$('#ptReAcLb').children().css('color','green');
		chkAcntYN = true;
	}else{
		$('#ptReAcLb').children().html('계좌번호가 일치하지 않습니다.');
		$('#ptReAcLb').children().css('color','red');
		chkAcntYN = false;
	}
}


/*===================요청 시 유효성 검사==========================================  */
$('#submitBtn').click(function() {
	if (confirm('환전 요청하시겠습니까?')) {
		if ($('input[name="pt_bank"]').val() == '') {
			alert('은행명을 입력해주세요.');
			$('input[name="pt_bank"]').focus();
		}else if ($('#pt_account').val()=='') {
			alert('계좌번호를 입력해주세요.');
			$('#pt_account').focus();
		}else if (!chkAcntYN) {
			alert('계좌번호가 일치하지 않습니다.');
			$('#pt_reAccount').focus();
		}else if ($('input[name="pt_count"]').val() == '') {
			alert('포인트를 입력해주세요.');
			$('input[name="pt_count"]').focus();
		}else if ($('input[name="pt_count"]').val() == 0) {
			alert('0포인트 이상 입력해주세요.');
			$('input[name="pt_count"]').focus();
		}else if(!chkPoint){
			alert('보유한 포인트가 부족합니다.');
			$('input[name="pt_count"]').focus();
		}else {
			$('#rqstExchg').submit();
		}
	}
	
	
});


$('input[name="pt_bank"]').keyup(function() {
	$(this).val( $(this).val().replace(/[^ㄱ-힣a-zA-Z]/gi,"") );
});



</script>
</html>