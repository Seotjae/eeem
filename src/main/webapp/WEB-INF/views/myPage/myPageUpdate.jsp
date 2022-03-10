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
			/*박스크기*/
			width: 430px;
			height: 500px;
			
			/*박스색깔*/
			background-color: #3CAEFF;
			
			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
  			
  			/*여백*/
  			margin-top: 20px;	
		}
		
		#text1{		
			/*글자*/
			font-size: 30px;
			color : white;
		}
		
		#text2{
			/*글자*/
			font-size: 14px;
			color : white;
			text-decoration: underline;
		}
		
		#box2{
			/*박스범위*/
			border : 1px solid gray;
			border-collapse: collapse;
			
			/*왼쪽 정렬*/
			text-align: left;
			margin-left: 55px;
			position: absolute;
  			
  			/*박스크기*/
			width: 82px;
			height: 30px;
			margin-top:-6px;
			
			/*박스색깔*/
			background-color: white;
			
			/*글자*/
			text-align: center;
			padding-top: 3px;
		}
		
		#textbox{		
			/*박스크기*/
			width: 320px;
			height: 60px;
			
			/*글자*/
			font-size: 20px;
			text-align: center;
		}
		
		#check{
			/*박스범위*/
			border : 1px solid black;
			border-collapse: collapse;
			
			/*박스크기*/
			width: 150px;
			height: 40px;
			border-radius: 20px;
			
			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
  			
			/*박스색깔*/
			background-color: white;
			
			/*글자*/
			font-size: 20px;
			padding-top: 4px;
			text-align: center;
			color: black;
			
			/*마우스 오버*/
			cursor: pointer;
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
	                       <br/><br/><br/>
	                       <div id="text1">비밀번호 확인</div>
	                       <br/>
	                       <div id="text2">*본인 확인을 위해 <span style="color:red; text-decoration: underline;">비밀번호</span>를 한번더 입력해주세요</div>
	                       <br/><br/>
	                       <div id="box2">비밀번호</div>
	                       <br/>
	                       <form action="myPageUpdateForm" method="get">
		                       <input id="textbox" type="password" name="mem_pw"  placeholder="비밀번호 입력"/> 
		                       <br/><br/><br/><br/>
		                       <button id="check">확인</button>
	                       </form>
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
	
}
</script>
</html>