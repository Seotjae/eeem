<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style>
		#box1{
			/*박스범위*/
			border : 1px solid black;
			border-collapse: collapse;
			
			/*박스크기*/
			height: 700px;
			
			/*여백*/
  			margin-top: 20px;	
			
			/*박스색깔*/
			background-color: #3CAEFF;
		}
		
		#box2{
			/*박스범위*/
			border : 1px solid black;
			border-collapse: collapse;
			
			/*박스크기*/
			width: 550px;
			height: 650px;
			margin-top:10px;
			
			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
  			
  			/*박스색깔*/
			background-color: white;
		}
		
		
	</style>
</head>
<body>
	<section id="tabs" class="project-tab">
           <div class="container">
               <div class="row">
                   <div class="col-md-12">
                       <nav>
                           <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                               <a class="nav-item nav-link active" id="nav-update-tab" data-toggle="tab" href="myPageUpdate" role="tab" aria-controls="nav-update" aria-selected="true">회원정보수정</a>
                               <a class="nav-item nav-link" id="nav-like-tab" data-toggle="tab" href="myPageLike" role="tab" aria-controls="nav-like" aria-selected="false">즐겨찾기</a>
                               <a class="nav-item nav-link" id="nav-make-tab" data-toggle="tab" href="myPageMake" role="tab" aria-controls="nav-make" aria-selected="false">개설한 모임</a>
                               <a class="nav-item nav-link" id="nav-join-tab" data-toggle="tab" href="myPageJoin" role="tab" aria-controls="nav-join" aria-selected="false">신청한 모임</a>
                               <a class="nav-item nav-link" id="nav-qna-tab" data-toggle="tab" href="myPageQna" role="tab" aria-controls="nav-qna" aria-selected="false">내가 작성한 문의</a>
                               <a class="nav-item nav-link" id="nav-point-tab" data-toggle="tab" href="myPagePoint" role="tab" aria-controls="nav-point" aria-selected="false">포인트 내역</a>
                           </div>
                       </nav>
                       <div id="box1">
                           <div  id="box2">
                              <div>회원 정보 수정</div>
                              <hr/>
                              <div>아이디</div>
                              <div>로그인ID</div>
                              <div>비밀번호</div>
                              <input type="password"/>
                              <div>비밀번호 확인</div>
                              <input type="password"/>
                              <div>이름</div>
                              <input type="text" value="회원이름"/>
                              <div>E-MAIL</div>
                              <input type="email" value="email@gmail.com"/>
                              <div>휴대폰</div>
                              <input type="tel" value="01012345678"/>
                              <br/>
                              <a id="button" href="myPageUpdateForm">휴대폰 중복 확인</a>
                           </div>                    
                       </div>
                   </div>
               </div>
           </div>
       </section>
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}</script>
</html>