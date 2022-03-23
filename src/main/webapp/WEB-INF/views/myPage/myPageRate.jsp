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
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		#myPageRate .row input[type=button]{
			width: 120px;
            height: 30px;
            margin: 10 auto;
            display: block;
            background-color: white;
            border: 2px solid rgb(197, 197, 197);
            border-radius: 15px;
            font-weight: 600;
            font-size: 13px;
            cursor: pointer;
		}
		
		#myPageRate #myform fieldset{
		    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
		    direction: rtl; /* 이모지 순서 반전 */
		    border: 0; /* 필드셋 테두리 제거 */
		}
		#myPageRate #myform input[type=radio]{
		    display: none; /* 라디오박스 감춤 */
		}
		#myPageRate #myform label{
		    font-size: 2em; /* 이모지 크기 */
		    color: transparent; /* 기존 이모지 컬러 제거 */
		    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
		    display: inline;
		}
		#myPageRate #myform label:hover{
		    text-shadow: 0 0 0 yellow; /* 마우스 호버 */
		}
		#myPageRate #myform label:hover ~ label{
		    text-shadow: 0 0 0 yellow; /* 마우스 호버 뒤에오는 이모지들 */
		}
		#myPageRate #myform fieldset legend{
		    text-align: left;
		}
		#myPageRate #myform input[type=radio]:checked ~ label{
		    text-shadow: 0 0 0 yellow; /* 마우스 클릭 체크 */
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
				<img src="resources/images/icons/backimage.png" width ="60px" height="40px"/>
			</a>
		</div><br/>
		<div class="row">
			<div class="col-md-1">
			</div>
			<div class="col-md-10">
				<div class="row" >
					<div class="col-md-2">
						<h5>평가하기</h5>						
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
							<div class="col-md-3">						
							</div>
							<div class="col-md-3">
								<h5>모임정보</h5>
							</div>
							<div class="col-md-3">
							</div>		
							<div class="col-md-3">
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
												<a target="_blank" href="meetDetail?meet_num=${dto.meet_num}">;
													<img src="resources/meetPhoto/${dto.meet_thum}" width ="250px" height="250px"/>
												</a>
											</div>
										</div>
									</div>
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-12" >
												<p style="text-align: left; font-size:30px;">${dto.meet_subject}</p>
											</div>
										</div><br/><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">개설자 : ${dto.mem_id}</p>
											</div>
										</div><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">모임인원 : ${dto.app_prs}명</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">모임기간 : <fmt:formatDate value="${dto.meet_start}" pattern="yyyy-MM-dd HH:mm"/> ~ <fmt:formatDate value="${dto.meet_end}" pattern="yyyy-MM-dd HH:mm"/></p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">모임장소: <span id="region">장소</span></p>
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
				
			<form name="myform" id="myform" method="post" action="rateEnd">
				<div class="row" id="myTbody">
					<input type="hidden" name="meet_num" value="${dto.meet_num}"/>
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-2">
							</div>
							<div class="col-md-8">
								<div class="row">
									<div class="col-md-2">
										<h5>참여자정보</h5>
									</div>
									<div class="col-md-7">
									</div>
									<div class="col-md-3">
										<button id="btnRate" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" onclick="rateEnd()">평가 완료하기</button>
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
						
							
							</div>
							<div class="col-md-2">
							</div>
						</div>
					</div>					
				</div>
			</form>
				
								
			</div>
			<div class="col-md-1">
			</div>
		</div>	
	</div><br/><br/><br/>				
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}

const region = document.getElementById('region');
if('${dto.meet_region}' == 0){region.innerText ='서울';}
if('${dto.meet_region}' == 1){region.innerText ='경기';}
if('${dto.meet_region}' == 2){region.innerText ='충청';}
if('${dto.meet_region}' == 3){region.innerText ='강원';}
if('${dto.meet_region}' == 4){region.innerText ='전라';}
if('${dto.meet_region}' == 5){region.innerText ='경상';}
if('${dto.meet_region}' == 6){region.innerText ='제주';}
if('${dto.meet_region}' == 6){region.innerText ='온라인';}


var meet_num = ${dto.meet_num};
GradeList(meet_num);
console.log(meet_num);
function GradeList(meet_num) {
	$.ajax({
		url:'GradeList',
		type:'get',
		data:{'meet_num':meet_num},
		dataType:'json',
		success:function(data){
			console.log(data);
			drawList(data.list);
		},
		error:function(e){
			console.log(e);
		}
	});
}

function drawList(list){
	var content = '';
	
	list.forEach(function(item){
		content += '<div class="row">';	
		content += '<div class="col-md-2" style="line-height: 40px;">';
		content += '<p>'+item.mem_name+'</p>';
		content += '</div>';
		content += '<div class="col-md-2" style="line-height: 40px;">';	
		content += '<p>'+item.mem_id+'</p>';
/* 		content +='<input type="hidden" name="grd_targetId" value="'+item.mem_id+'">'; */
		content += '</div>';
		content += '<div class="col-md-4" style="line-height: 40px;">';	
		content += '<p>'+(item.mem_phone).replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/, "$1-$2-$3");+'</p>';
		content += '</div>';
		content += '<div class="col-md-4">';
		content += '<fieldset>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="5" id="'+item.mem_id+'1"><label for="'+item.mem_id+'1">⭐</label>'	
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="4" id="'+item.mem_id+'2"><label for="'+item.mem_id+'2">⭐</label>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="3" id="'+item.mem_id+'3" checked="checked"><label for="'+item.mem_id+'3">⭐</label>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="2" id="'+item.mem_id+'4"><label for="'+item.mem_id+'4">⭐</label>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="1" id="'+item.mem_id+'5"><label for="'+item.mem_id+'5">⭐</label>'
		content += '</fieldset>'
		content += '</div>';
		content += '</div><br/>';	
	});
	

	$('#list').empty();
	$('#list').append(content);
}

function rateEnd() {
	var result = confirm('평가를 완료하시겠습니까?');
	console.log(result);
	if (result) {
		$($('#myform').submit());
	}else{
		
	}
}
</script>

</html>