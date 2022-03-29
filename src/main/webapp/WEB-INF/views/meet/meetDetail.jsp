<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->


<!-- =====페이징===================================================================================== -->
<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="resources/paging/jquery.twbsPagination.js"></script>
<!-- =====페이징===================================================================================== -->

<style>

/* 신고하기 팝업 */
	.pop1{
		position: fixed;
		border: 1px solid #58ACFA;
		padding: 20px;
	    width: 510px;
	    height: 610px;
	  	z-index: 10;
	    display:none;
	    left:580px;
	    top:100px;
	    background-color: white;
	    border-radius: 10px 10px;
		}

		/* 대댓글 팝업 */
	.pop2{
		position: fixed;
		border: 1px solid #58ACFA;
		padding: 20px;
	    width: 510px;
	    height: 610px;
	  	z-index: 10;
	    display:none;
	    left:580px;
	    top:100px;
	    background-color: white;
	    border-radius: 10px 10px;
		}
		
			/*신고하기  확인버튼 */
		#btn1{
		border: 3px solid #58ACFA;
		border-collapse: collapse;
		background-color: #5882FA;
		border-radius: 5px 5px;
		color:white;
		width: 70px;
		height: 35px;
		display:inline-block;
		}
		/* 확인버튼 */
		#btn1:hover{
		cursor: pointer;
		background-color: #AAB9FF;
		}
		
			/* 신고하기 확인, 취소 버튼 div 클래스 */
		.del2{
		text-align: center;
		}
		/*신고하기 취소 버튼 */
		#btn2:hover{
		cursor: pointer;
		background-color: #AAB9FF;
		}
		/*신고하기 취소 버튼 */
		#btn2{
			border: 1px solid #5882FA;
			border-collapse: collapse;
			background-color: white;
			border-radius: 5px 5px;
			color:#58ACFA;
			width: 70px;
			height: 35px;
			display:inline-block;
		}
		
		/*대댓글 취소 버튼 */
		#rebtn1:hover{
		cursor: pointer;
		background-color: #AAB9FF;
		}
		/*대댓글 취소 버튼 */
		#rebtn1{
			border: 1px solid #5882FA;
			border-collapse: collapse;
			background-color: white;
			border-radius: 5px 5px;
			color:#58ACFA;
			width: 70px;
			height: 35px;
			display:inline-block;
		}
		
		.textarea{
		border: 1px solid #89B8FF;
		width: 440px;
	   	height: 110px;
	   	resize: none;
		}
		
		
		/*모임 문의 답글달기 확인버튼 */
		#meetCommentAnswerBtn{
		border: 3px solid #58ACFA;
		border-collapse: collapse;
		background-color: #5882FA;
		border-radius: 5px 5px;
		color:white;
		width: 70px;
		height: 35px;
		display:inline-block;
		}
		/*모임 문의 답글달기 확인버튼 */
		#meetCommentAnswerBtn:hover{
		cursor: pointer;
		background-color: #AAB9FF;
		}

/* 모임 상세보기 기본 보임 */
#meetContent {
	display: display;
}
/* 모임 문의 가려놓음  */
#meetCommentContainer{
	display: none;
}
/* 모임 후기 가려놓음  */
#meetReviewContainer{
	display : none;
}
/* 모임 신청자 가려놓음 */
#meetAppContainer{
	display: none;
}

#meetComment #meetCommentContainer div {
	padding: 0px;
}

#meetComment #myTheadWriter #myTheadSubmit #myCommentTbodyWriter {
	/* height: 120px; */
	display: flex;
	align-items: center;
	justify-content: center;
}

#meetComment #myTheadInput textarea {
	height: 100px;
}

#meetComment #myThead p {
	text-align: center;
	color: black;
	font-weight: 600;
	font-size: 15px;
}

#myCommentTbodyButton {
	display: flex;
	justify-content: flex-end;
}

#myCommentTbodyWriter p {
	color: #222;
	font-weight: 600;
}

#myCommentTbodyContent p {
	text-align: center;
	color: black;
	font-weight: 600;
	font-size: 15px;
}

#myCommentTbodyTime p {
	text-align: right;
	color: lightgray;
}

#myCommentTbodyButton {
	display: flex;
	justify-content: center;
}

/* 페이징 버튼 색 */
#meetComment .how-pagination1 {
	width: auto;
	min-width: 36px;
	background-color: #222;
	border-color: #222;
}

/* 페이징 버튼 가운데 정렬 */
#meetComment #buttonCenter, .pagination {
	justify-content: center;
}

#meetCommentBtn {
	font-size: 13px;
	width: 80px;
	height: 40px;
	font-weight: 600;
}

/* ==================신청자관리 css 시작============================================ */
		
		
		#meetComment #meetAppContainer div{
			padding: 0px;
		}
	
		#meetComment #meetAppConThead{
			background-color: 89B8FF;
		}
		#meetComment #meetAppConThead div{
			height: 40px;
			display:flex;
			align-items: center;
			justify-content: center;
		}
		
		#meetComment #meetAppConThead p{
			text-align: center;
			color: white;
			font-weight: 600;
			font-size: 15px;
		}
		
		#meetComment #meetAppConTbody div{
			height: 30px;
			display:flex;
			align-items: center;
			justify-content: center;
		}
		#meetComment #meetAppConTbody p{
			text-align: center;
			font-size: 13px;
		}
		
		#selectDiv{
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
		
		#selectDiv select{
			height:30px;
			font-size: 14px;
		}
		
		
		/* 대기중 승인중 버튼 스타일 */
		#waitApp{
			/* cursor:pointer;
			background-color: white;
			border: 1px solid #222; */
			border-radius:5px;
			width:50px;
			height: 30px;
		}
		#confApp{
			color:white;
			font-weight:600;
			background-color: 89B8FF;
			border: 1px solid 89B8FF;
			border-radius:5px;
			width:50px;
			height: 30px;
		}
		
		
/*======================모임 후기 css 시작==================================================================  */		
		
			
		#meetComment #meetReviewContainer div{
			padding: 0px;
		}
		
		#meetComment #meetReviewTheadWriter,#meetComment #meetReviewTheadSubmit, #meetReviewTbodyWriter{
			/* height: 120px; */
			display:flex;
			align-items: center;
			justify-content: center;
		}
		#meetComment #meetReviewTheadInput textarea{
			height: 100px;
		}
		#meetComment #meetReviewThead p{
			text-align: center;
			color: #222;
			font-weight: 600;
			font-size: 14px;
		}

		#meetReviewTbodySubject p{
			font-weight: 600;
			color: #222;
			font-size: 17px;
		}
		#meetReviewTbodyTime p {
			text-align: right;
			color: lightgray;
		}
		
		#meetReviewTbodyButton{
			display: flex;
			justify-content: center;
		}
		#meetReviewTbodyButton a{
			font-size: 14px;
		}
		
		#registBtn{
			font-size: 13px;
			width: 80px;
			height: 40px;
			font-weight: 600;
		}

</style>
</head>
<body id="meetComment">
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

<div class="container-fluid" id=meetDetailUp>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">
				<h5>모임 상세보기</h5>
				<%-- ${mDetail.meet_num} --%>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-2"></div>
			<div class="col-md-2"></div>
			<div class="col-md-2"></div>
		</div>

		<hr/>

		<div class="row">
			<div class="col-md-12"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<p>
								분야 :
								<c:choose>
									<c:when test="${mDetail.meet_interest eq 0 }">
			              교육/강연
			            </c:when>
									<c:when test="${mDetail.meet_interest eq 1 }">
			               취미/소모임
			            </c:when>
									<c:when test="${mDetail.meet_interest eq 2 }">
			               문화/예술/방송
			            </c:when>
									<c:when test="${mDetail.meet_interest eq 3 }">
			               전시/박람회
			            </c:when>
									<c:when test="${mDetail.meet_interest eq 4 }">
			               스포츠/게임
			            </c:when>
									<c:when test="${mDetail.meet_interest eq 5 }">
			               패션/뷰티
			            </c:when>
									<c:when test="${mDetail.meet_interest eq 6 }">
			               기타
			            </c:when>
								</c:choose>
				</p>
				<p>
									지역 :
									<c:choose>
										<c:when test="${mDetail.meet_region eq 0 }">
				               서울
				            </c:when>
										<c:when test="${mDetail.meet_region eq 1 }">
				               경기
				            </c:when>
										<c:when test="${mDetail.meet_region eq 2 }">
				               충청
				            </c:when>
										<c:when test="${mDetail.meet_region eq 3 }">
				               강원
				            </c:when>
										<c:when test="${mDetail.meet_region eq 4 }">
				               전라
				            </c:when>
										<c:when test="${mDetail.meet_region eq 5 }">
				               경상
				            </c:when>
										<c:when test="${mDetail.meet_region eq 6 }">
				               제주
				            </c:when>
										<c:when test="${mDetail.meet_region eq 7 }">
				               온라인
				            </c:when>
									</c:choose>
								</p>
								<br/>
			</div>
			<div class="col-md-5"></div>
			<div class="col-md-2"></div>
			</div>

<div class="row">
<div class="col-md-2"></div>
<div class="col-md-2">
				<!-- 썸네일 -->
				<c:forEach items="${thumFile}" var="thumbnail">
					<img src="resources/meetPhoto/${thumbnail.meet_thum}" width="250px" />
				</c:forEach>
				<br/><br/>
				<h5>개설자 정보</h5>
				<hr />
				<p>아이디 &nbsp;&nbsp;&nbsp; ${MeetWriter.mem_id}</p>
				<div>이름 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					${MeetWriter.mem_name}</div>
				<div>휴대폰 &nbsp;&nbsp;&nbsp; ${MeetWriter.mem_phone}</div>
				<div>이메일 &nbsp;&nbsp;&nbsp; ${MeetWriter.mem_email}</div>
				<div>평점 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					${MeetWriter.grd_score}</div>
</div>
<div class="col-md-6">

				<div class="row">
					<div class="col-md-3">
						<h5>모임제목</h5>
					</div>
					<div class="col-md-5">
						<p>${mDetail.meet_subject}</p>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-2"></div>
				</div>
				<hr />
				<div class="row">
					<div class="col-md-2">
						<p>모집시작</p>
					</div>
					<div class="col-md-4">
						<p>${mDetail.meet_gatherStart}</p>
					</div>
					<div class="col-md-2">
						<p>모집 종료</p>
					</div>
					<div class="col-md-4">
						<p>${mDetail.meet_gatherEnd}</p>
					</div>
				</div>

				<br />
				
				<div class="row">
					<div class="col-md-2">
						<p>모임시작</p>
					</div>
					<div class="col-md-4">
						<p>${mDetail.meet_start}</p>
					</div>
					<div class="col-md-2">
						<p>모임 종료</p>
					</div>
					<div class="col-md-4">
						<p>${mDetail.meet_end}</p>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-2">
						<p>승인인원</p>
					</div>
					<div class="col-md-4">
						<p>${approve}</p>
					</div>
					<div class="col-md-2">
						<p>모집 인원</p>
					</div>
					<div class="col-md-4">
						<p>${mDetail.meet_totalPrs}</p>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-2">
						<p>모임비</p>
					</div>
					<div class="col-md-4">
						<p>${mDetail.meet_point}</p>
					</div>
					<div style="" class="col-md-2"></div>
					<div style="height: 100px;" class="col-md-4"></div>
				</div>
				
				
				<div class="row">
					<div style="height: 80px;" class="col-md-2" ></div>
					<div style="" class="col-md-4"></div>
					<div style="" class="col-md-2"></div>
					<div style="" class="col-md-4">
							<button id="meetWchk" type="button" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
								신청하기</button>
								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="block2-txt-child2 flex-r p-t-3">
								<span class="btn-addwish-b2 dis-block pos-relative">
									<button onclick="like('${mDetail.meet_num}')">
										<img class="icon-heart1 dis-block trans-04 hreatbtn"
											src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
											src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</button>
								</span>
							</div>
					</div>
					
					
				</div>
					

</div>
			
<div class="col-md-2"></div>
			
			
</div>

	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-1"></div>
		<div class="col-md-1">
		<!-- 신고하기 버튼 -->
		<img src="resources/images/singoBtn.png" id="meetDeclaration" style="width:20px;height:20px; cursor:pointer;"/>
		<!-- <button id="meetDeclaration" type="button" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
		신고하기
		</button> -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>


	<!---------------------==================== 신고하기 팝업 ===================----------------- -->
	<form action="meetSct_regist" method="post">

		<div class="pop1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<h2 class="h44">신고하기</h2>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-3">
						<p>신고대상</p>
					</div>
					<br />
					<div class="col-md-9">
						<!-- 신고당하는아이디 -->
						<input type="text" id="dec_targetId" name="dec_targetId"
							value="${MeetWriter.mem_id}" class="form-control" readonly />
							
						<!-- 신고 당하는 종류 0모임 1댓글 2후기-->
						<input type="hidden" name="dec_type" id="dec_type"/>
						<!-- 신고 당하는 번호 -->
						<input type="hidden" name="dec_targetNum" id="dec_targetNum"/>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-3">
						<p>모임 제목</p>
					</div>
					<br />
					<div class="col-md-9">
						<!-- 공통 신고사항 -->
						<input type="text" name="meet_num" id="meet_num"
							value="${mDetail.meet_num}" class="form-control" readonly /> 
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-3">
						<p>신고내용</p>
					</div>
					<br />
					<div class="col-md-9">
						<input type="text" id="dec_content" name="dec_content"
							placeholder="내용" class="form-control" style="height:150px;"/>
					</div>
				</div>
				<br /> <br />
				<div class="row">
					<div class="col-md-12 del2">
						<!-- <input type="submit"  id="btn1" value="확인" class="del1" />  -->
						<input type="submit"  id="btn1" value="확인"/> 
						<input type="button" id="btn2" value="취소" />
					</div>
				</div>
			</div>

		<hr />
		</div>
	</form>






	<!---------------------==================== 중간 탭 ===================----------------- -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="tabbable" id="tabs-34355">
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a class="nav-link active" href="#tab1" data-toggle="tab" onclick="tabChange(0)">모임 상세보기</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#tab2" data-toggle="tab"  onclick="tabChange(1)">모임 문의하기</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#tab3" data-toggle="tab"  onclick="tabChange(2)">모임 후기</a>
						</li>
						<c:if test="${not empty loginId && loginId eq MeetWriter.mem_id}">
							<li class="nav-item">
								<a class="nav-link" href="#tab4" data-toggle="tab"  onclick="tabChange(3)">모임 신청자 관리</a>
							</li>
						</c:if>
					</ul>

				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</div>
	<br/>

	<!-- ========================================상세보기========================================= -->
	<!-- 상세보기 -->

	<div class="container-fluid" id="meetContent">
		<div class="row">

		</div>
		<div class="row">
			<div class="col-md-2">
				<!-- <h5>모임 상세보기 부분!</h5> -->
			</div>
			<div class="col-md-8">
			<%-- 	모임 상세보기 - ${mDetail.meet_num} --%>
				<!--  모임 상세보기 본문 사진부분 -->
				
				<c:forEach items="${photos}" var="photo">
					<img src="resources/meetPhoto/${photo.photo_newName}" />
				</c:forEach>
				<br /> <br /> <br /> <br />
				<p>문의 상세 정보 글 보기 - ${mDetail.meet_content}</p>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"></div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"></div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<!---------------------==================== 대댓글 팝업 ===================----------------- -->
	<!-- <form action="reCommentWrite" method="post"> -->
	<form action="reCommentWrite" method="post">

		<div class="pop2">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<h2 class="h44">문의 댓글 쓰기</h2>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-3">
					<!-- 	<p>댓글대상(작성자 아이디)</p> -->
						<p>아이디</p>
					</div>
					<br />
					<div class="col-md-9">

						<input type="text" id="cmt_targetId" value="" class="form-control"
							readonly />
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-3">
						<!-- <p>대상 문의 글 내용(/번호)</p> -->
						<p>답변 대상</p>
					</div>
					<br />
					<div class="col-md-9">
						<input type="hidden" name="meet_num" id="meet_num" value="${mDetail.meet_num}" />
						<input type="text" id="cmt_targetCont" value="" class="form-control" readonly />
						<input type="hidden" name="cmt_superNum" id="cmt_superNum" value="" />
					</div>
				</div>
				<br />
				<br />
				<div class="row">
					<div class="col-md-3">
						<p>답변</p>
					</div>
					<br />
					<div class="col-md-9">
						<!-- <textarea id="cmt_content" name="cmt_content" placeholder="내용" class="form-control"></textarea> -->
						<input type="text" id="cmt_content" name="cmt_content" placeholder="내용" class="form-control" style="height:150px;"/>
					</div>
				</div>
				<br /> <br />
				<div class="row">
					<div class="col-md-12 del2">
						<!-- <input type="submit" value="확인" class="del1" id="meetCommentAnswerBtn"/>  -->
						<input type="button" value="확인" id="meetCommentAnswerBtn"/> 
						<input type="button" id="rebtn1" value="취소" />
					</div>
				</div>
			</div>
		</div>
	</form>
	<!---------------------==================== 팝업 ===================----------------- -->


	<!-- ==========================모임 상세보기 아랫부분 ========================================================= -->
	<div class="container-fluid" id="meetCommentContainer">

		<!-- ==========================모임문의 작성========================================================= -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form id="meetCommentForm" action="meetCommentWrite" method="post">
					<div class="row" id="myThead">
						<div class="col-md-2" id="myTheadWriter">
							<p>${loginId}</p>
							<input type="hidden" name="meet_num" value="${mDetail.meet_num}" />
						</div>
						<div class="col-md-8" id="myTheadInput">
							<!-- 	<input type="text" name="rev_subject" placeholder="후기 제목을 입력하세요 (최대 80자)" class="form-control" maxlength="80" style="margin-bottom: 10px;"/> -->

							<textarea name="cmt_content" class="form-control"
								placeholder="모임과 관련 없는 글, 비방, 홍보, 도배 등의 글을 작성할 경우 이용약관에 의해 제재를 받을 수 있습니다."
								id="exampleInput"></textarea>

						</div>
						<div class="col-md-2" id="myTheadSubmit">
							<input type="button"
								class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
								id="meetCommentBtn" value="등록" />
						</div>
					</div>
				</form>
				<hr/>

				<!-- ==========================문의 보여주는 곳 ========================================================= -->
				<div id="list">
					<div class="row" id="myCommentTbody">
						<div class="col-md-2" id="myCommentTbodyWriter"></div>

						<div class="col-md-8"
							style="height: 100px; display: flex; justify-content: center; align-items: center;">
							<span
								style="font-size: 18px; color: lightgray; font-weight: 600;">모임
								문의가 존재하지 않습니다.</span>
						</div>
						<div class="col-md-2"></div>
					</div>
					<hr />
				</div>


			</div>
		</div>

		<div class="col-md-2"></div>


		<!-- ========================================페이징 버튼========================================= -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div id="paging">
					<div class="container">
						<nav aria-label="Page navigation" style="text-align: center">
							<ul class="pagination" id="pagination"></ul>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	<!-- ==========================모임 상세보기 아랫부분 신청자 관리 ========================================================= -->
	<div class="container-fluid" id="meetAppContainer">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-7">
			</div>
			<div class="col-md-1" id="selectDiv">
				<select id="serchAppState">
					<option value="3" selected="selected">전체 (10)</option>
					<option value="1">승인 (4)</option>
					<option value="0">대기중 (6)</option>
				</select>
			</div>
		</div>
		<br/>
		<!-- ==========================신청자 테이블 헤드 ========================================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="meetAppConThead">
					<div class="col-md-2">
						<p>NO</p>
					</div>
					<div class="col-md-2">
						<p>이름 (ID)</p>
					</div>
					<div class="col-md-2">
						<p>전화번호</p>
					</div>
					<div class="col-md-2">
						<p>생년월일</p>
					</div>
					<div class="col-md-2">
						<p>평점</p>
					</div>
					<div class="col-md-2">
						<p>신청상태</p>
					</div>
				</div>
				<br/>
			
<!-- ==========================신청자 테이블 바디 ========================================================= -->
				<div id="meetAppConList">
					<div class="row" id="meetAppConTbody">
						<div class="col-md-2" id="meetAppConTbodyWriter">
						</div>
						
						<div class="col-md-8" style="height: 100px; display: flex; justify-content: center; align-items: center;">
							<span style="font-size: 18px; color: lightgray; font-weight: 600;">모임 신청자가 존재하지 않습니다.</span>
						</div>
						
						<div class="col-md-2" id="meetAppConTbodyButton">
						</div>
					</div>
					<hr/>	
				</div>
				
			</div>
			
			
			<div class="col-md-2">
			</div>
		

		
		

		</div>
		
<!-- ========================================페이징 버튼========================================= -->		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div id="paging">
		            <div class="container">                           
		               <nav aria-label="Page navigation" style="text-align:center">
		                  <ul class="pagination" id="meetAppConPagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	
		
</div>


<!-- ==========================모임리뷰 상세보기 아랫부분 ========================================================= -->
	<div class="container-fluid" id="meetReviewContainer">
	
		<!-- ==========================후기 작성폼 ========================================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<form id="meetReviewRegistForm" action="meetReviewRegist" method="post">
					<div class="row" id="meetReviewThead">
						<div class="col-md-2" id="meetReviewTheadWriter">
							<p>
								<c:if test="${empty loginId}">
									로그인<br/>필요
								</c:if>
								<c:if test="${not empty loginId}">
									${loginId}
								</c:if>
							</p>
							<input type="hidden" name="meet_num" value="${mDetail.meet_num}"/>
						</div>
						<div class="col-md-8" id="meetReviewTheadInput">
		                	<input type="text" name="rev_subject" placeholder="후기 제목을 입력하세요 (최대 80자)" class="form-control" maxlength="80" style="margin-bottom: 10px;"/>
	
							<textarea name="rev_content" class="form-control" placeholder="후기 내용을 입력하세요" id="RevInput"></textarea>
	
						</div>
						<div class="col-md-2" id="meetReviewTheadSubmit">
							<input type="button" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" id="registBtn" value="등록"/>
						</div>
					</div>
				</form>
				<hr/>
			
<!-- ==========================후기 보여주는 곳 ========================================================= -->
				<div id="meetReviewList">
					<div class="row" id="meetReviewTbody">
						<div class="col-md-2" id="meetReviewTbodyWriter">
						</div>
						
						<div class="col-md-8" style="height: 100px; display: flex; justify-content: center; align-items: center;">
							<span style="font-size: 18px; color: lightgray; font-weight: 600;">모임 후기가 존재하지 않습니다.</span>
						</div>
						
						<div class="col-md-2" id="meetReviewTbodyButton">
						</div>
					</div>
					<hr/>	
				</div>
				
			</div>
			
			
			<div class="col-md-2">
			</div>
		

		
		

		</div>
		
<!-- ========================================페이징 버튼========================================= -->		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div id="paging">
		            <div class="container">                           
		               <nav aria-label="Page navigation" style="text-align:center">
		                  <ul class="pagination" id="meetReviewPagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	
		
</div>


<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</body>

<script>
	// 신청하기를 눌렀을 경우에 신청자의 포인트 확인.

	var myPoint = ${mpoint};
	console.log('내가 가지고 있는 포인트' + myPoint);
	var meetPoint = ${mDetail.meet_point};
	console.log('모임 포인트' + meetPoint);
	var meet_num = ${mDetail.meet_num};

	$('#meetWchk').on('click', function() {
		console.log('여길 타기는 타니? ');
		if (myPoint < meetPoint) {
			
			alert('포인트가 부족합니다. 포인트충전 후 이용해주세요');

		} else {
			console.log('else');
			alert("해당포인트가 차감 됩니다. 신청하시겠습니까?");
			location.href = "./pointToss?meet_num=${mDetail.meet_num}";
		}
	});

	// 즐겨찾기
	function like(meet_num) {

		$.ajax({
			type : 'get',
			url : 'bookmarkinsert',
			data : {
				'meet_num' : meet_num
			},
			datatype : 'JSON',
			success : function(data) {
				console.log(data);
				alert(data.msg);
			},
			error : function(e) {
				console.log(e);

				alert('즐겨찾기 추가가 실패하였습니다. 잠시후 다시 시도해주세요.')
			}
		});

	};

	// 신고하기 팝업창

	//모임 상세보기 신고하기 
/* 	$('#meetDeclaration').on('click', function() {
		var dec_targetId = '${MeetWriter.mem_id}';
		var dec_type = 0;
		var dec_targetNum = meet_num;
		$('#dec_targetId').val(dec_targetId);
		$('#dec_type').val(dec_type);
		$('#dec_targetNum').val(meet_num);

		$('.pop1').css('display', 'block');

	}); */
	
	
	
	$('#meetDeclaration').on('click', function() {
		
		if (loginId == null || loginId=='') {
	
				alert('로그인이 필요합니다.');
				
				}else{
			
					var dec_targetId = '${MeetWriter.mem_id}';
					var dec_type = 0;
					var dec_targetNum = meet_num;
					$('#dec_targetId').val(dec_targetId);
					$('#dec_type').val(dec_type);
					$('#dec_targetNum').val(meet_num);
					
					$('.pop1').css('display', 'block');
			
			
						}
			
			});
	
	
	
	

	$('#btn2').on('click', function() {
		//console.log('');

		$('.pop1').css('display', 'none');

	});
	
	//문의하기 

	/* $('#meetCommentBtn').click(function() {
		$('#meetCommentForm').submit();
	}); */
	
	//모임 문의하기 로그인 확인 절차 
	var loginId = '${loginId}';
	
	
		$('#meetCommentBtn').click(function() {	 
			if (loginId == null || loginId=='') {
				alert('로그인이 필요합니다.');
			}else if ($('#exampleInput').val() == ''){
				alert('내용을 입력해주세요');
				$('#exampleInput').focus();
			}else{
			$('#meetCommentForm').submit();
				}
		});
	


	
  	$('#meetCommentAnswerBtn').click(function() {
		
		if (loginId == null || loginId=='') {
			
			alert('로그인이 필요합니다.');
			
		}else{
			
		$('#reCommentWrite').submit();
		
		}
		
	}); 

	

/*==============페이징 =========================================================*/

	var currPage = 1;
	meetCommentCall(currPage, 10); //현재 페이지, 페이지당 보여줄 수

	/* 모임 문의 페이징 */
	function meetCommentCall(page, cnt) {

		$.ajax({
			type : 'POST',
			url : 'meetCommentCall',
			data : {
				'page' : page,
				'cnt' : cnt,
				'meet_num' : meet_num
			},
			dataType : 'JSON',
			success : function(data) {

				console.log(data);
				/* 페이징 */
				totalPage = data.pages;

				//만들 페이지가 있을 경우
				if (totalPage > 0) {
					listDraw(data.list);

					$('#pagination').twbsPagination({
						startPage : currPage,//현재 페이지
						totalPages : totalPage,//만들수 있는 총 페이지 수
						visiblePages : 5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지
						onPageClick : function(evt, page) {//해당 페이지 번호를 클릭했을때 일어날 일들
							//console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
							//console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
							meetCommentCall(page, 10);
						}
					});
				}

			},
			error : function(e) {
				console.log(e);
			}
		});
	}

	function listDraw(list) {
		var content = '';
		list.forEach(function(item, idx) {

			var cmt_date = new Date(item.cmt_date);
			cmt_date = cmt_date.toLocaleString().substring(0, 12);

			//console.log(idx,item);

			content += '<div class="row" id="myCommentTbody"';
			if (item.cmt_depth == 1) {
				/* content += 'style="margin-left:50px;"'; */
				/* 대댓글 색깔 입력 */
				content += 'style="margin-left:50px; background-color: 89B8FF;"';
			}
			content += '>';
			content += '<div class="col-md-2" id="myCommentTbodyWriter"><p>'
					+ item.mem_id + '</p></div>'; //작성자

			content += '<div class="col-md-8" style="padding: 0px 14px;">';
			content += '<div class="row" style="margin-bottom: 10px;">';
			content += '<div class="col-md-10" id="myCommentTbodyNum" ><p>';
			content += item.cmt_num; //후기제목
			content += '</p></div>';
			content += '<div class="col-md-2" id="myCommentTbodyTime"><p>';
			content += cmt_date; //후기날짜
			content += '</p>';
			 if (item.cmt_depth == 0) {
				content += '<button onclick="meetCommentAnswer(\''
						+ item.mem_id + '\',\'' + item.cmt_content + '\','
						+ item.cmt_num 
						+ ')" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"> 답글달기</button>';//답글달기 클릭시 모달창 등장
			}  
			
			content += '</div>';
			content += '</div>';
			content += '<div class="row">';
			content += '<div class="col-md-12" id="myCommentTbodyContent"><p>';
			content += item.cmt_content; //후기내용
			content += '</p></div>';

			content += '</div>';
			content += '</div>';

			content += '<div class="col-md-2" id="myTbodyButton">';
			if (loginId == item.mem_id || loginId_mem_state == 1){
				content += '<a href="javascript:commentDel('+ item.cmt_num + ')" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">삭제</a>';
				
			}else{
				content += '<img src="resources/images/singoBtn.png" style="width:20px;height:20px; cursor:pointer;" id="singoBtn" onclick="singo(\''+item.mem_id+'\','+item.cmt_num+','+1+')"/>';
			}
			content += '</div>';
			
			

			content += '</div>';
			content += '<hr/>';
		});
		//console.log(content);
		$('#list').empty();
		$('#list').append(content);

		//페이징 버튼 문구랑 css
		$('.page-link').eq(1).html('Prev')
		$('.page-link').removeClass('page-link').addClass(
				'flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1');

		$('#rebtn1').on('click', function() {
			//console.log('');

			$('.pop2').css('display', 'none');

		});
		
	}

	function meetCommentAnswer(mem_id, cmt_content, cmt_num) {
		console.log(cmt_num, mem_id, cmt_content);
			
			if (loginId == null || loginId=='') {
				
				alert('로그인이 필요합니다.');
				
			}else{
				
		$('.pop2').toggle();
		$('#cmt_targetId').val(mem_id);
		$('#cmt_targetCont').val(cmt_content);
		$('#cmt_superNum').val(cmt_num);
			
			}
		
		
	}
	
	
	

	function commentDel(cmt_num) {
		var yn = confirm("삭제하시겠습니까?");

		if (yn) {
			location.href = './commentDelete?meet_num=${mDetail.meet_num}&cmt_num='+ cmt_num;
		}

	}
	
	
/*===============모임신청자관리용 스크립트위치===========================================================================  */
//페이지 로딩 시 셀렉트 박스 와 모임 번호
var sltState = $('#serchAppState').val();
//console.log(sltState,meet_num);

//셀렉트 박스 선택시
$('#serchAppState').change(function() {
	
	sltState = $('#serchAppState').val();
	//console.log(sltState);
	
	meetAppsCall(currPage,10);//리스트 호출
});


/*==============모임신청자페이징 =========================================================*/
var currPage=1;
meetAppsCall(currPage,10); //현재 페이지, 페이지당 보여줄 수

function meetAppsCall(page,cnt) {
	//console.log(sltState);
	
	$.ajax({
		type:'POST',
		url:'meetAppsCall',
		data:{'page':page,'cnt':cnt,'sltState':sltState,'meet_num':meet_num},
		dataType:'JSON',
		success : function(data) {
			
			/* 신청자 인원수 확인  */
			var $optBox = $('#serchAppState').children();
			$optBox.eq(0).html('전체 ('+data.counts[0]+')');
			$optBox.eq(1).html('승인 ('+data.counts[1]+')');
			$optBox.eq(2).html('대기중 ('+data.counts[2]+')');
			
			
			/* 페이징 */
			totalPage = data.pages;
			console.log(totalPage);
			meetAppConNoList();
			
			if (totalPage>0) { //만들페이지가 있으면
				meetAppConListDraw(data.list);
				$('#meetAppConPagination').twbsPagination({
					startPage: currPage,//현재 페이지
					totalPages: totalPage,//만들수 있는 총 페이지 수
					visiblePages:5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지	
					onPageClick:function(evt,page){//해당 페이지 번호를 클릭했을때 일어날 일들
						//console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
						//console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
						meetAppsCall(page, 10);
					}
				});
			}
			
			
		},
		error: function(e) {
			console.log(e);
		}
	});
}

function meetAppConNoList() {
	var content = '';		

	content += '<div class="row" id="meetAppConTbody">';
	content += '<div class="col-md-2" id="meetAppConTbodyWriter">';
	content += '</div>';
	content += '<div class="col-md-8" style="height: 100px; display: flex; justify-content: center; align-items: center;">';
	content += '<span style="font-size: 18px; color: lightgray; font-weight: 600;">해당 신청자가 존재하지 않습니다.</span>';
	content += '</div>';
	content += '<div class="col-md-2" id="meetAppConTbodyButton">';
	content += '</div>';
	content += '</div>';
	content += '<hr/>';

	//console.log(content);
	$('#meetAppConList').empty();
	$('#meetAppConList').append(content);
}

function meetAppConListDraw(list){
	var content = '';		
	list.forEach(function(item, idx){
		
		var app_birth = new Date(item.app_birth);
		app_birth = app_birth.toLocaleString().substring(0,12);
		
		//console.log(idx,item);
		content += '<div class="row" id="meetAppConTbody">';
		content += '<div class="col-md-2"><p>'+item.app_num+'</p></div>'; //신청자 번호
		
		content += '<div class="col-md-2"><p>'+item.app_name+'</p>&nbsp<p>('+item.app_id+')</p></div>'; //신청자 이름 (아이디)
		
		content += '<div class="col-md-2"><p>'+item.app_phone+'</p></div>'; //신청자 전화번호
		
		content += '<div class="col-md-2"><p>'+app_birth+'</p></div>'; //신청자 생년월일
		
		content += '<div class="col-md-2"><p>'; //신청자 신청자 평점
			if (item.grd_avg == null || item.grd_avg == '') {content += ' - ';} //평점 없을 때
			else{content += item.grd_avg;} //평점 있을 때
		content += '</p></div>';
		
		content += '<div class="col-md-2"><p>'; //대기중 or 승인
			if (item.app_state ==0) {content += '<input id="waitApp" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" type="button" value="대기중" onclick="updAppSt('+item.app_num+',\''+item.app_id+'\')">';}
			else{content += '<input id="confApp" type="button" value="승인됨">';}
		content += '</p></div>';	
			
		content += '</div>';
		content += '<hr/>';	
	});
	//console.log(content);
	$('#meetAppConList').empty();
	$('#meetAppConList').append(content);
	
	
	//페이징 버튼 문구랑 css
	$('.page-link').eq(1).html('Prev')
	$('.page-link').removeClass('page-link').addClass( 'flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1' );
	
	

	
	
}

/* 대기중 클릭 시 함수 */
function updAppSt(app_num,app_id) {
	var result = confirm('신청은 취소할 수 없습니다. 승인하시겠습니까?');
	if (result) {
		$.ajax({
			type:'get',
			url:'updAppSt',
			data:{'app_num':app_num,'meet_num':meet_num,'app_id':app_id},
			dataType:'JSON',
			success : function(data) {
				console.log(data);
				if (data.result >0) {
					//alert('신청이 승인되었습니다.');
				}else{
					alert('신청이 승인되지 않았습니다.');
				}
				meetAppsCall(currPage,10);
			},
			error: function(e) {
				console.log(e);
			}
		});
	}
}


/* ================모임리뷰 스크립트 부분====================================================================== */

var loginId = '${loginId}';
var loginId_mem_state = ${loginId_mem_state};
var chkAppYN = ${chkAppYN}; //로그인한 사용자의 모임 참석여부, 0:미참석 1:참석
var chkReviewYN= ${chkReviewYN}; //로그인한 사용자의 리뷰 작성여부, 0:미작성 1:작성
console.log(chkAppYN,chkReviewYN);

/*==============모임리뷰페이징 =========================================================*/
var currPage=1;
meetReviewCall(currPage,10); //현재 페이지, 페이지당 보여줄 수

function meetReviewCall(page,cnt) {
	
	$.ajax({
		type:'POST',
		url:'meetReviewCall',
		data:{'page':page,'cnt':cnt,'meet_num':meet_num},
		dataType:'JSON',
		success : function(data) {
			
			console.log(data);
			/* 페이징 */
			totalPage = data.pages;

			//만들 페이지가 있을 경우
			if (totalPage>0) {
				meetReviewListDraw(data.list);
				
				$('#meetReviewPagination').twbsPagination({
					startPage: currPage,//현재 페이지
					totalPages: totalPage,//만들수 있는 총 페이지 수
					visiblePages:5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지
					onPageClick:function(evt,page){//해당 페이지 번호를 클릭했을때 일어날 일들
						//console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
						//console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
						meetReviewCall(page, 10);
					}
				});
			}
			
		},
		error: function(e) {
			console.log(e);
		}
	});
}

function meetReviewListDraw(list){
	var content = '';		
	list.forEach(function(item, idx){
		
		var rev_date = new Date(item.rev_date);
		rev_date = rev_date.toLocaleString().substring(0,12);
		
		//console.log(idx,item);
		content += '<div class="row" id="meetReviewTbody">';
		content += '<div class="col-md-2" id="meetReviewTbodyWriter"><p>'+item.mem_id+'</p></div>'; //작성자
		
		content += '<div class="col-md-8" style="padding: 0px 14px;">';
		content += '<div class="row" style="margin-bottom: 10px;">';
		content += '<div class="col-md-10" id="meetReviewTbodySubject" ><p>';
		content += item.rev_subject; //후기제목
		content += '</p></div>';
		content += '<div class="col-md-2" id="meetReviewTbodyTime"><p>';
		content += rev_date; //후기날짜
		content += '</p></div>';
		content += '</div>';
		content += '<div class="row">';
		content += '<div class="col-md-12" id="meetReviewTbodyContent"><p>';
		content += item.rev_content; //후기내용
		content += '</p></div>';
		content +='</div>';
		content += '</div>';
		
		content += '<div class="col-md-2" id="meetReviewTbodyButton">';
		if (loginId == item.mem_id || loginId_mem_state == 1) {content += '<a href="javascript:revDel('+item.rev_num+')" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">삭제</a>';}
		else{content += '<img src="resources/images/singoBtn.png" style="width:20px;height:20px; cursor:pointer;" id="singoBtn" onclick="singo(\''+item.mem_id+'\','+item.rev_num+','+2+')"/>';}
		content += '</div>';

		content += '</div>';
		content += '<hr/>';	
	});
	//console.log(content);
	$('#meetReviewList').empty();
	$('#meetReviewList').append(content);
	
	//페이징 버튼 문구랑 css
	$('.page-link').eq(1).html('Prev')
	$('.page-link').removeClass('page-link').addClass( 'flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1' );
	



}




/*================후기등록요청========================================================================   */


$('#registBtn').click(function() {
	if (loginId == null || loginId=='') {
		alert('로그인이 필요합니다.');
	}else if (chkAppYN >0) {
		
		if (chkReviewYN > 0) {
			alert('모임후기는 한개만 작성할 수 있습니다.');
		}else {
			if ($('input[name="rev_subject"]').val() == null || $('input[name="rev_subject"]').val() == ''|| $('input[name="rev_subject"]').val() == ' '|| $('input[name="rev_subject"]').val() == '  ') {
				alert('제목을 입력하세요.');
				$('input[name="rev_subject"]').focus();
			}else if ($('#RevInput').val() == null || $('#RevInput').val() == ''|| $('#RevInput').val() == ' '|| $('#RevInput').val() == '  '|| $('#RevInput').val() == '   ') {
				alert('내용을 입력하세요.');
				$('#RevInput').focus();
			} else{
				$('#meetReviewRegistForm').submit();
			}
		}
		
	}else {
		alert('모임후기는 참석자만 작성할 수 있습니다.');
	}
});

/* 후기 삭제 요청 */
function revDel(rev_num) {
	if (confirm('후기를 삭제하시겠습니까?')) {
		location.href="meetRevDel?rev_num="+rev_num+"&meet_num="+meet_num;	
	}
}


/* 신고 팝업 */
function singo(dec_targetId,dec_targetNum,dec_type) {
	console.log('click',dec_targetId,dec_targetNum,dec_type);
	$('#dec_targetId').val(dec_targetId);
	$('#dec_targetNum').val(dec_targetNum);
	$('#dec_type').val(dec_type);
	$('.pop1').toggle();
}

/* 모임 하단 탭 처리용 스크립트 */
function tabChange(idx) {
	console.log(idx);
	$('#meetContent').hide();
	$('#meetCommentContainer').hide();
	$('#meetReviewContainer').hide();
	$('#meetAppContainer').hide();
	if (idx == 0) { //모임 상세보기
		$('#meetContent').show();
	}
	if (idx == 1) { //모임 문의
		$('#meetCommentContainer').show();
	}
	if (idx == 2) { //모임 후기
		$('#meetReviewContainer').show();
	}
	if (idx == 3) { //모임 신청자 관리
		$('#meetAppContainer').show();
	}
}
	
</script>
</html>