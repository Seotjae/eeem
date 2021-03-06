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
		
		#myPageRate .row fieldset{
		    display: inline-block; /* ?????? ?????? ??????????????? ?????? ????????? ????????? ?????????.*/
		    direction: rtl; /* ????????? ?????? ?????? */
		    border: 0; /* ????????? ????????? ?????? */
		}
		#myPageRate .row input[type=radio]{
		    display: none; /* ??????????????? ?????? */
		}
		#myPageRate .row label{
		    font-size: 2em; /* ????????? ?????? */
		    color: transparent; /* ?????? ????????? ?????? ?????? */
		    text-shadow: 0 0 0 #f0f0f0; /* ??? ????????? ?????? ?????? */
		    display: inline;
		}
		#myPageRate .row label:hover{
		    text-shadow: 0 0 0 yellow; /* ????????? ?????? */
		}
		#myPageRate .row label:hover ~ label{
		    text-shadow: 0 0 0 yellow; /* ????????? ?????? ???????????? ???????????? */
		}
		#myPageRate .row fieldset legend{
		    text-align: left;
		}
		#myPageRate .row input[type=radio]:checked ~ label{
		    text-shadow: 0 0 0 yellow; /* ????????? ?????? ?????? */
		}
	</style>
</head>
<body id="myPageRate">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageRateContainer">
		
		<br/><br/>		
		<!-- ========================================????????? ??????========================================= -->
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
						<p>????????????</p>						
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
								<h5>????????????</h5>
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
												<a href="meetDetail?meet_num=${meetdto.meet_num}">;
													<img src="resources/meetPhoto/${meetdto.meet_thum}" width ="250px" height="250px"/>
												</a>
											</div>
										</div>
									</div>
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-12" >
												<p style="text-align: left; font-size:30px;">?????? : ${meetdto.meet_subject}<!--${meetdto.meet_subject}  --></p>
											</div>
										</div><br/><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">????????? : ${meetdto.mem_id}</p>
											</div>
										</div><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">???????????? : ${meetdto.meet_totalPrs}<!--  ${meetdto.meet_totalPrs}*-->???</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">???????????? : <span id="date">${meetdto.meet_start} ~ ${meetdto.meet_end}</span></p>
											</div>			<!--${meetdto.meet_start} ~ ${meetdto.meet_end}-->
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">????????????: <span id="region">??????</span></p><!--${meetdto.meet_region}-->
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-2">
							</div>						
						</div>
					</div>					
				</div><br/><br/><hr/>
				<div class="row">
					<div class="col-md-2">		
					</div>
					<div class="col-md-6">
						<h5>????????? ??????</h5>
					</div>
					<div class="col-md-4">
						<input type="button"
						class="flex-c-m stext-101 cl0 size-70 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" 
						value="?????? ????????????"
						onclick="javascript:makescore()"/>
					</div>
					<div class="col-md-2">
					</div>					
				</div>
				
				
				
			
				<div class="row" id="myTbody">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-2">
							</div>
							<div class="col-md-8">
								<br/>
								<div class="row">
									<div class="col-md-2">
										<p>??????</p>
									</div>
									<div class="col-md-2">
										<p>?????????</p>
									</div>
									<div class="col-md-4">
										<p>????????????</p>
									</div>
									<div class="col-md-4">
										<p>????????????</p>
									</div>
								</div><hr/>
								
								
							<div id="list">
								<div class="row">
									<div class="col-md-2">
										<p>${meetdto.mem_name}</p><!-- ${meetdto.mem_name} -->
									</div>
									<div class="col-md-2">
										<p>${meetdto.mem_id}</p><!-- ${meetdto.mem_id} -->
									</div>
									<div class="col-md-4">
										<p>${meetdto.meet_phone}</p><!-- ${meetdto.meet_phone} -->
									</div>
									<div class="col-md-4 star_wrap">
										<!-- <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span> -->
										<fieldset id="ratingSelect">
											<input type="radio" name="rating" value="5" id="1"><label for="1">???</label>
											<input type="radio" name="rating" value="4" id="2"><label for="2">???</label>
											<input type="radio" name="rating" value="3" id="3" checked="checked"><label for="3">???</label>
											<input type="radio" name="rating" value="2" id="4"><label for="4">???</label>
											<input type="radio" name="rating" value="1" id="5"><label for="5">???</label>
										</fieldset>				
									</div>
								</div>
							</div>
							</div>
							<div class="col-md-2">
							</div>
						</div>
					</div>
				</div><br/><br/><br/><br/><br/><br/> 						
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
//????????????, ????????????, ????????????

var score = 3;

function makescore(){
	score = $("#ratingSelect input[type=radio]:checked").val();
	if (confirm("???????????? "+score+"??? ?????? ?????????????????????????")) {
		
	var targetId = "${meetdto.mem_id}";
	var meet_num = "${meetdto.meet_num}";
	console.log(score);
	location.href="makeEvaluation?targetId=${meetdto.mem_id}&meet_num=${meetdto.meet_num}&score="+score;	
	}
}

const region = document.getElementById('region');
if('${dto.meet_region}' == 0){region.innerText ='??????';}
if('${dto.meet_region}' == 1){region.innerText ='??????';}
if('${dto.meet_region}' == 2){region.innerText ='??????';}
if('${dto.meet_region}' == 3){region.innerText ='??????';}
if('${dto.meet_region}' == 4){region.innerText ='??????';}
if('${dto.meet_region}' == 5){region.innerText ='??????';}
if('${dto.meet_region}' == 6){region.innerText ='??????';}
if('${dto.meet_region}' == 6){region.innerText ='?????????';}


/* $(document).ready(function(){
	
	$('.star_wrap span').click(function(){
		score = $(this).index() + 1;
		if (score == "1") {
			$(this).text("???").siblings().text("???");
		}else if(score == "2") {
			$('.star_wrap span:lt(2)').text("???");
			$('.star_wrap span:gt(1)').text("???");
		}else if(score == "3") {
			$('.star_wrap span:lt(3)').text("???");
			$('.star_wrap span:gt(2)').text("???");
		}else if(score == "4") {
			$('.star_wrap span:lt(4)').text("???");
			$('.star_wrap span:gt(3)').text("???");
		}else{
			$('.star_wrap span').text("???");
		}
	
	});
	
}); */

</script>

</html>