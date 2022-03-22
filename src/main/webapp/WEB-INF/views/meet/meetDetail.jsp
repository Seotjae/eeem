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
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="resources/paging/jquery.twbsPagination.js"></script>
<!-- =====페이징===================================================================================== -->

<style>
hr {
	margin-top: -1px;
	margin-bottom: 15px;
	order: 0;
	border-top: 0.px solid #2e6da4;
}

.pop1 {
	position: absolute;
	border: 1px solid #89B8FF;
	width: 510px;
	height: 450px;
	z-index: 10;
	display: none;
	left: 500px;
	top: 500px;
	background-color: #ff9797;
}

.pop2 {
	position: absolute;
	border: 1px solid #89B8FF;
	width: 510px;
	height: 450px;
	z-index: 10;
	display: none;
	left: 500px;
	top: 500px;
	background-color: #ff9797;
}

/* 문의 상세보기 가려놓음 */
#tab1 {
	display: none;
}

/* 문의 상세보기 가려놓음 */
#meetContent {
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
</style>
</head>
<!-- <body style="background-color: 89B8FF;"> -->
<body id="meetComment">
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">
				<h3>모임 상세보기 ${mDetail.meet_num}</h3>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-2"></div>
			<div class="col-md-2"></div>
			<div class="col-md-2"></div>
		</div>

		<hr align="center" color="yellow" style="width: 70%;" />

		<div class="row">
			<div class="col-md-12"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<h5>
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
				</h5>
				<h5>
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
				</h5>
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
						<h4>모임제목</h4>
					</div>
					<div class="col-md-5">
						<h4>${mDetail.meet_subject}</h4>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-2"></div>
				</div>
				<br />
				<hr />
				<br />
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
				<%-- <h6>
				모집기간 : ${mDetail.meet_gatherStart}~${mDetail.meet_gatherEnd}
			</h6> --%>
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
					<div style="background-color: red" class="col-md-2"></div>
					<div style="background-color: green" class="col-md-4"></div>
				</div>

			</div>
			\

			<div style="background-color: orange" class="col-md-2"></div>
			<%-- <h3>
				승인인원 / 모집인원 ${approve} / ${mDetail.meet_totalPrs}
			</h3>
			<h3>
				모임비 ${mDetail.meet_point}
			</h3>
			<h3>
				/ ${mpoint}
				<!-- <div>
					/
				</div> -->
			</h3>  --%>
			<button id="meetWchk" type="button" class="btn btn-success btn-sm">
				신청하기</button>
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
		<div class="col-md-1">
			<p>
				<br />
			</p>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
			<div>
				<br />
			</div>
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
		<div class="col-md-2"></div>

	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-2"></div>
		<div class="col-md-2">

			<button id="meetDeclaration" type="button"
				class="btn btn-success btn-sm">신고하기</button>
			<!-- <a href="javascript:showPopUp()">신고하기</a> -->
		</div>
	</div>


	<!---------------------==================== 팝업 ===================----------------- -->
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
					<div class="col-md-2">
						<p>신고대상(개설자의 아이디)</p>
					</div>
					<br />
					<div class="col-md-10">

						<input type="text" id="dec_targetId" name="dec_targetId"
							value="${MeetWriter.mem_id}" class="form-control" readonly />
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-2">
						<p>대상 모임 제목(/번호)</p>
					</div>
					<br />
					<div class="col-md-10">
						<input type="text" name="meet_num" id="meet_num"
							value="${mDetail.meet_num}" class="form-control" readonly />
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<p>신고내용</p>
					</div>
					<br />
					<div class="col-md-10">
						<input type="text" id="dec_content" name="dec_content"
							placeholder="내용" class="form-control" />
					</div>
				</div>
				<br /> <br />
				<div class="row">
					<div class="col-md-12 del2">
						<input type="submit" value="확인" class="del1" /> <input
							type="button" id="del1" value="취소" />
					</div>
				</div>
			</div>

		</div>
	</form>
	<!---------------------==================== 팝업 ===================----------------- -->


	<hr align="center" color="red" style="width: 70%;" />


	<div class="row">
		<div class="col-md-12"></div>
	</div>
	<div class="row">
		<div class="col-md-12"></div>
	</div>



	<div class="container-fluid" id="meetTab">
		<!-- 중간 탭 -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="tabbable" id="tabs-770103">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link" href="#tab1"
							data-toggle="tab">상세보기</a></li>
						<li class="nav-item"><a class="nav-link active show"
							href="#tab2" data-toggle="tab">모임 문의</a></li>
						<li class="nav-item"><a class="nav-link active show"
							href="#tab3" data-toggle="tab">모임 후기</a></li>
					</ul>



					<!-- 탭 선택 영역 -->
					<div class="tab-content">

						<!-- 상세보기 -->
						<!-- 아래 주석은 모임 상세보기 막아둔 것. tab-pane active시 항상 보이게 -->
						<!-- <div class="tab-pane active" id="panel-618047" id="tab1"> -->
						<div class="tab-pane" id="panel-618047" id="tab1">
							<p></p>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									모임 상세보기 - ${mDetail.meet_num}
									<!--  모임 상세보기 본문 사진부분 -->
									<!-- <img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<br/><br/>
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<br/><br/>
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /> -->
									<c:forEach items="${photos}" var="photo">
										<img src="resources/meetPhoto/${photo.photo_newName}" />
									</c:forEach>
									<br /> <br /> <br /> <br />
									<p>문의 상세 정보 글 보기 - ${mDetail.meet_content}</p>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<!-- 상세보기 -->


						<!-- 모임 문의  탭 클릭할때 들어갈 곳-->
						<div class="tab-pane" id="tab2">
							<p>d야아아아 모임 문의 들어가는 곳</p>
						</div>



						<!-- 모임 후기 탭 클릭할 때 들어갈 곳  -->
						<div class="tab-pane" id="tab3">
							<p>d야아아아 모임 후기 들어가는 곳</p>
						</div>
					</div>
					<!-- 위에 div 탭 선택 영역 -->


				</div>
			</div>
		</div>


		<div class="col-md-2"></div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
	</div>

	<!-- 중간 탭 -->
	<!-- ========================================상단 탭========================================= -->


	<!-- 상세보기, 모임 문의, 모임 후기 -->


	<hr align="center" color="red" style="width: 70%;" />



	<!-- ========================================상세보기========================================= -->
	<!-- 상세보기 -->

	<div class="container-fluid" id="meetContent">
		<div class="row">
			<!-- 		<div class="col-md-12">
		</div> -->
		</div>
		<div class="row">
			<div class="col-md-2">
				<h5>모임 상세보기 부분!</h5>
			</div>
			<div class="col-md-8">
				모임 상세보기 - ${mDetail.meet_num}
				<!--  모임 상세보기 본문 사진부분 -->
				<!-- <img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<br/><br/>
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<br/><br/>
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /> -->
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
					<div class="col-md-2">
						<p>댓글대상(작성자 아이디)</p>
					</div>
					<br />
					<div class="col-md-10">

						<input type="text" id="cmt_targetId" value="" class="form-control"
							readonly />
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-2">
						<p>대상 문의 글 내용(/번호)</p>
					</div>
					<br />
					<div class="col-md-10">
						<input type="hidden" name="meet_num" id="meet_num"
							value="${mDetail.meet_num}" /> <input type="text"
							id="cmt_targetCont" value="" class="form-control" readonly /> <input
							type="hidden" name="cmt_superNum" id="cmt_superNum" value="" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<p>답변하기</p>
					</div>
					<br />
					<div class="col-md-10">
						<textarea id="cmt_content" name="cmt_content" placeholder="내용"
							class="form-control"></textarea>
					</div>
				</div>
				<br /> <br />
				<div class="row">
					<div class="col-md-12 del2">
						<input type="submit" value="확인" class="del1" /> <input
							type="button" id="del2" value="취소" />
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
				<hr color="skyblue" />

				<!-- ==========================후기 보여주는 곳 ========================================================= -->
				<div id="list">
					<div class="row" id="myCommentTbody">
						<div class="col-md-2" id="myCommentTbodyWriter"></div>

						<div class="col-md-8"
							style="height: 100px; display: flex; justify-content: center; align-items: center;">
							<span
								style="font-size: 18px; color: lightgray; font-weight: 600;">모임
								후기가 존재하지 않습니다.</span>
						</div>
						<div class="col-md-2"></div>
					</div>
					<hr />
				</div>


			</div>
		</div>



		<%-- 	<!-- ==========================모임 문의의 답글 작성========================================================= -->
		
		<div class="row">
			<div class="col-md-2">
			</div>
				<div class="col-md-8">
					<form id="reCommentForm" action="reCommentWrite" method="post">
						<div class="row" id="myThead">
							<div class="col-md-2" id="myTheadWriter">
								<p>${MeetWriter.mem_id}</p>
								<input type="text" name="cmt_num" value="${cmt_num}"/>
								<!-- 모임 번호는 hidden 으로 바꾸기 -->
							</div>
							<div class="col-md-8" id="myTheadInput">
		                <!-- 	<input type="text" name="rev_subject" placeholder="후기 제목을 입력하세요 (최대 80자)" class="form-control" maxlength="80" style="margin-bottom: 10px;"/> -->
							<textarea name="cmt_content" class="form-control" placeholder="답변을 적어주세요" id="exampleInput"></textarea>
							
							</div>
							<div class="col-md-2" id="myTheadSubmit">
								<input type="button" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" id="meetCommentAnswerBtn" value="등록"/>
							</div>
						</div>
					</form>
					<hr/>
					 --%>











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

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


</body>

<script>
	// 신청하기를 눌렀을 경우에 신청자의 포인트 확인.

	var myPoint = ${mpoint};
	console.log('내가 가지고 있는 포인트' + myPoint);
	var meetPoint = ${mDetail.meet_point};
	console.log('모임 포인트' + meetPoint);

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
			url : 'meetBookmarkinsert',
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
	$('#meetDeclaration').on('click', function() {
		//console.log('');

		$('.pop1').css('display', 'block');

	});

	$('#del1').on('click', function() {
		//console.log('');

		$('.pop1').css('display', 'none');

	});

	$('#meetCommentBtn').click(function() {
		$('#meetCommentForm').submit();
	});

	$('#meetCommentAnswerBtn').click(function() {
		$('#reCommentForm').submit();
	});

	var meet_num = ${mDetail.meet_num};

	/*==============페이징 =========================================================*/
	var currPage = 1;
	meetCommentCall(currPage, 10); //현재 페이지, 페이지당 보여줄 수

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
				content += 'style="margin-left:50px;"';
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
						+ ')" class="btn btn-danger"> 답글달기</button>';//답글달기 클릭시 모달창 등장
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
			content += '<img src="#"/>';
			/* content += '<p>삭제</p>'; */
			content += '<button type="button" onclick="commentDel('
					+ item.cmt_num + ')" class="btn btn-link" >' + '삭제'
					+ '</button>';
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

		$('#del2').on('click', function() {
			//console.log('');

			$('.pop2').css('display', 'none');

		});
	}

	function meetCommentAnswer(mem_id, cmt_content, cmt_num) {
		console.log(cmt_num, mem_id, cmt_content);
		$('.pop2').toggle();
		$('#cmt_targetId').val(mem_id);
		$('#cmt_targetCont').val(cmt_content);
		$('#cmt_superNum').val(cmt_num);
	}

	function commentDel(cmt_num) {
		var yn = confirm("삭제하시겠습니까?");

		if (yn) {
			location.href = './commentDelete?meet_num=${mDetail.meet_num}&cmt_num='+ cmt_num;
		}

	}
</script>
</html>