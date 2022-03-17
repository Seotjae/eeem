<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>모임신청자 관리</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
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


	<!-- =====페이징===================================================================================== -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  
	<script src="resources/paging/jquery.twbsPagination.js"></script>
	<!-- =====페이징===================================================================================== -->

	<style>
		#meetAppCon #myThead{
			background-color: 89B8FF;
		}
		#meetAppCon #myThead div{
			height: 40px;
			display:flex;
			align-items: center;
			justify-content: center;
		}
		
		#meetAppCon #myThead p{
			text-align: center;
			color: white;
			font-weight: 600;
			font-size: 15px;
		}
		
		#meetAppCon #myTbody div{
			height: 30px;
			display:flex;
			align-items: center;
			justify-content: center;
		}
		#meetAppCon #myTbody p{
			text-align: center;
			font-size: 13px;
		}
		
	
	</style>

</head>
<body id="meetAppCon">

<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>
	
<!-- ==========================모임 상세보기 윗부분 ========================================================= -->
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
		<div class="col-md-1">
		썸네일
		<c:forEach items="${thumFile}" var="thumbnail">
			<!-- <img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /> 바꾸기 전 -->
			<%-- <img alt="Bootstrap Image Preview" src="resources/thumbnail/${thumbnail.photo_newName}" width="250px" />  파일 이름을 포토디티오에서 가져온 것--%>
			<img src="resources/meetPhoto/${thumbnail.meet_thum}" width="250px" />
		</c:forEach>
		</div>
		
		<div class="col-md-1">
			<h3>
				작성자 정보
			</h3>
			<p>
				작성자 아이디  ${mDetail.mem_id}
			</p>
 			<div>
				이름   ${mem_name}
			</div>
			<div>
				전화번호  ${mem_phone}
			</div>
			<div>
				email  ${mem_email}
			</div>
			<div>
				평점   ${grd_targetType}
			</div>
			
		</div>
		<div class="col-md-2">
			<h6>
				모임제목   ${mDetail.meet_subject}
			</h6>
			<h6>
				모집기간 ${mDetail.meet_gatherStart}~${mDetail.meet_gatherEnd}
			</h6>
			<h6>
				모임기간  ${mDetail.meet_start}~${mDetail.meet_end}
			</h6>
		</div>
		<div class="col-md-2">
		<h3>
				승인인원 / 모집인원 ${app_state} / ${mDetail.meet_totalPrs}
			</h3>
			<h3>
				모임비 ${mDetail.meet_point}
			</h3>
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
	
	
<!-- ==========================모임 상세보기 아랫부분 ========================================================= -->
	<div class="container-fluid">
	
		<!-- ==========================신청자 테이블 헤드 ========================================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="myThead">
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
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/>
		
		<!-- ==========================신청자 테이블 바디 ========================================================= -->
		<div id="list">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="row" id="myTbody">
						<div class="col-md-2">
							<p>1</p>
						</div>
						<div class="col-md-2">
							<p>홍길동 (test)</p>
						</div>
						<div class="col-md-2">
							<p>010 1234 1234</p>
						</div>
						<div class="col-md-2">
							<p>90 12 34</p>
						</div>
						<div class="col-md-2">
							<p>4.34</p>
						</div>
						<div class="col-md-2">
							<input type="button">
						</div>
					</div>
					<hr/>	
				</div>
				<div class="col-md-2">
				</div>
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	
		
</div>
	

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	
</body>
<script>
</script>
</html>

