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
	
	#row11 {
			margin-top: 150px;
		
		}
	
	</style>
</head>
<body>

 <div class="container-fluid">
 
		<div class="row" id="row11">
		<div class="col-md-12">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			 <input type="button" onclick="location.href='./queList'" value="뒤로가기"/>
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
			<h3>
				모임 상세보기
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
		<div class="col-md-12">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				ID : 
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				 ${question.mem_id}
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				문의분류 :
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				<%--  ${question.que_category} --%>
           <c:choose>
            <c:when test="${question.que_category eq 0 }">
               회원
            </c:when>
            <c:when test="${question.que_category eq 1 }">
               모임
            </c:when>
            <c:when test="${question.que_category eq 2 }">
               포인트
            </c:when>
            <c:when test="${question.que_category eq 3 }">
               기타
            </c:when>
         </c:choose>
			</h3>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				이름 :
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				 ${mem_name}
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				처리상태 :
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				<%-- ${question.que_state} --%>
				<%-- <c:if test="${question.que_state ne '1'} ">
					처리 전
				</c:if> --%>
				<!-- 만약 처리 상태가 1이라면 처리 완료 상태가 1이 아니라면 처리 전. -->
				<c:choose>
            <c:when test="${question.que_state eq 1 }">
               처리 완료
            </c:when>
            <c:when test="${question.que_state ne 1 }">
               처리 전
            </c:when>
         </c:choose>
			</h3>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				이메일 :
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				  ${mem_email}
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				처리자 :
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				<%-- <c:if test="${question.que_admin eq 'noData'} ">
					-
				</c:if> --%>
				<%-- <c:if test="${question.que_admin ne 'noData'} ">
					${question.que_admin}
				</c:if> --%>
				<c:choose>
            <c:when test="${question.que_admin eq 'noData'}">
               -
            </c:when>
            <c:when test="${question.que_admin ne 'noData'}">
               ${question.que_admin}
            </c:when>
         </c:choose>
				
			</h3>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				제목 :
			</h3>
		</div>
		<div class="col-md-6">
			<h3>
				${question.que_subject}
			</h3>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				내용
			</h3>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		  <!-- <input type="button" onclick="del()" value="삭제"/> -->
			<button type="button" onclick="del()" class="btn btn-link">
				삭제
			</button>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-10">
			<p>
				  ${question.que_content}
			</p>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
</div>


</body>

<script>


 function del(){
		var yn = confirm("삭제하시겠습니까?");
		
		if(yn){
			location.href='./delete?que_num=${question.que_num}';
		}
		
	}


</script>
</html>



