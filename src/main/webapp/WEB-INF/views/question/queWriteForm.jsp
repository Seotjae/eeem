<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<style>
	
	
	
		#row1 {
			margin-top: 150px;
		
		}
	
	
	</style>
	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

  <!-- 부가적인 테마 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
</head>
<body id=queBody>

<div class="container-fluid">
	<div class="row" id="row1">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				문의하기
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
	<hr/>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	
	 <form id="queWriteForm" action="queWrite" method="post">
	 
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				ID 
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				<input name="mem_id" class="form-control" type="text" 
              placeholder="${mem_id}" value="${mem_id}" readonly>
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
				이메일
			</h3>
		</div>
		<div class="col-md-2">
			<h3>
			<input name="mem_email" class="form-control" type="text" 
              placeholder="${mem_email}" value="${mem_email}" readonly>
			</h3>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<hr/>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				제목
			</h3>
		</div>
		<div class="col-md-2">
			<select class="form-control" name="que_category"  id= "queCategory" >
                                 	<option value="n">문의 분류</option>
                                	<option value="0">회원</option>
                                	<option value="1">모임</option>
                                	<option value="2">포인트</option>
                                	<option value="3">기타</option>
                            </select>
		</div>
		<div class="col-md-2">
			<h3>
				<input name="que_subject" id = "queSubject" class="form-control" placeholder="제목을 입력해주세요" type="text"/>
			</h3>
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
	<hr/>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				내용*
			</h3>
		</div>
		<div class="col-md-4">
			   <textarea name="que_content" type="text" style="height: 190px;" 
              class="form-control" placeholder="문의 내용을 입력해주세요." 
              id="queContent" cols="45" rows="8" required=""></textarea>
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
	<hr/>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-4">

			<input type="button"  onclick="quebtn()" id="queBtn" value="작성하기"/>
                            <input type="button" onclick="location.href='./queList'" value="리스트"/>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	</form>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
</div>
        
</body>
<script>

 function quebtn() {	 
		if ($('#queSubject').val() == '') {
			alert('제목을 입력해주세요.');
			$('#queSubject').focus();
		}else if ($('#queContent').val() == ''){
			alert('내용을 입력해주세요');
			$('#queContent').focus();
		}else if ($('#queCategory').val() == 'n') {
			alert('문의 종류를 선택해주세요.');
			$('#queCategory').focus();
			}else{
			$($('#queWriteForm').submit());
		}
		
	} 
	



</script>


</html>
