<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- 부트 스트랩 css -->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 
	 <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	 
	 <!-- 부트스트랩 js -->
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	 
	 
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<!-- 이 링크가 무엇을 뜻하는지 나중에 다시 알아보기! -->
	<!-- 리소시즈를 불러오도록 해주는 거야. 밑에있는 이 링크는. -->
	<link rel="styleSheet" type="text/css" href="resources/css/common.css">
	<style>
	hr{
	margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #2e6da4;
	}
	
	</style>
</head>
<!-- <body style="background-color: 89B8FF;"> -->
<body>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				모임 상세보기 ${mDetail.meet_num}
			</h3>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
		<hr align="center" color="red" style="width:70%;"/>
	
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				<%-- 기타 ${mDetail.meet_interest} --%>
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
             /
            <%--  서울 ${mDetail.meet_region} --%>
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
			</h3>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<h3>
				작성자 정보
			</h3>
			<p>
				작성자 아이디  ${mDetail.mem_id}
			</p>
<%-- 			<div>
				이름   ${mDetail.mem_name}
			</div>
			<div>
				전화번호  ${mDetail.mem_phone}
			</div>
			<div>
				email  ${mDetail.mem_email}
			</div>
			<div>
				평점   ${mDetail.grd_targetType}
			</div> --%>
			
		</div>
		<div class="col-md-2">
			<h3>
				모임제목   ${mDetail.meet_subject}
			</h3>
			<h3>
				모집기간 ${mDetail.meet_gatherStart}~${mDetail.meet_gatherEnd}
			</h3>
			<h3>
				모임기간  ${mDetail.meet_start}~${mDetail.meet_end}
			</h3>
		</div>
		<div class="col-md-2">
		<%-- 	<h3>
				승인인원 / 모집인원 ${mDetail.app_state} / ${mDetail.meet_totalPrs}
			</h3>
			<h3>
				모임비 ${mDetail.meet_point}
			</h3> --%>
			<h3>
				/
				<!-- <div>
					/
				</div> -->
			</h3> 
			<button type="button" class="btn btn-success btn-sm">
				신청하기
			</button>
		</div>
		<div class="col-md-2">
			<p>
				/
			</p>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			
			 
			<button type="button" class="btn btn-sm btn-outline-success">
				즐겨찾기
			</button>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			 
			<button type="button" class="btn btn-danger">
				신고하기
			</button>
		</div>
	</div>
	
	<hr align="center" color="red" style="width:70%;"/>
	
	
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
</div>

</body>
</html>