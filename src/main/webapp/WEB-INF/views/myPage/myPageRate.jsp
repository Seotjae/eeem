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

		
		#myPageRate #myform fieldset{
		    display: inline-block; /* ?????? ?????? ??????????????? ?????? ????????? ????????? ?????????.*/
		    direction: rtl; /* ????????? ?????? ?????? */
		    border: 0; /* ????????? ????????? ?????? */
		}
		#myPageRate #myform input[type=radio]{
		    display: none; /* ??????????????? ?????? */
		}
		#myPageRate #myform label{
		    font-size: 2em; /* ????????? ?????? */
		    color: transparent; /* ?????? ????????? ?????? ?????? */
		    text-shadow: 0 0 0 #f0f0f0; /* ??? ????????? ?????? ?????? */
		    display: inline;
		}
		#myPageRate #myform label:hover{
		    text-shadow: 0 0 0 yellow; /* ????????? ?????? */
		}
		#myPageRate #myform label:hover ~ label{
		    text-shadow: 0 0 0 yellow; /* ????????? ?????? ???????????? ???????????? */
		}
		#myPageRate #myform fieldset legend{
		    text-align: left;
		}
		#myPageRate #myform input[type=radio]:checked ~ label{
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
						<h5>????????????</h5>						
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
												<a href="meetDetail?meet_num=${dto.meet_num}">;
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
												<p style="text-align: left;">????????? : ${dto.mem_id}</p>
											</div>
										</div><br/>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">???????????? : ${dto.app_prs}???</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">???????????? : <fmt:formatDate value="${dto.meet_start}" pattern="yyyy-MM-dd HH:mm"/> ~ <fmt:formatDate value="${dto.meet_end}" pattern="yyyy-MM-dd HH:mm"/></p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<p style="text-align: left;">????????????: <span id="region">??????</span></p>
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
										<h5>???????????????</h5>
									</div>
									<div class="col-md-7">
									</div>
									<div class="col-md-3">
										<input type="button" id="btnRate" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" onclick="rateEnd()" value="?????? ????????????"/>
									</div>
								</div><br/>
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
if('${dto.meet_region}' == 0){region.innerText ='??????';}
if('${dto.meet_region}' == 1){region.innerText ='??????';}
if('${dto.meet_region}' == 2){region.innerText ='??????';}
if('${dto.meet_region}' == 3){region.innerText ='??????';}
if('${dto.meet_region}' == 4){region.innerText ='??????';}
if('${dto.meet_region}' == 5){region.innerText ='??????';}
if('${dto.meet_region}' == 6){region.innerText ='??????';}
if('${dto.meet_region}' == 6){region.innerText ='?????????';}


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
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="5" id="'+item.mem_id+'1"><label for="'+item.mem_id+'1">???</label>'	
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="4" id="'+item.mem_id+'2"><label for="'+item.mem_id+'2">???</label>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="3" id="'+item.mem_id+'3" checked="checked"><label for="'+item.mem_id+'3">???</label>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="2" id="'+item.mem_id+'4"><label for="'+item.mem_id+'4">???</label>'
		content += '<input type="radio" name="rating_'+item.mem_id+'" value="1" id="'+item.mem_id+'5"><label for="'+item.mem_id+'5">???</label>'
		content += '</fieldset>'
		content += '</div>';
		content += '</div><br/>';	
	});
	

	$('#list').empty();
	$('#list').append(content);
}

function rateEnd() {
	var result = confirm('????????? ?????????????????????????');
	console.log(result);
	if (result) {
		$($('#myform').submit());
	}else{
		
	}
}
</script>

</html>