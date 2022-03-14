<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<style></style>
	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

  <!-- 부가적인 테마 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
</head>
<body>

  <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-3">
                            <h3>
                                문의하기
                            </h3>
                        </div>
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                    <hr/>
                    <!-- 액션의  queWrite 를 컨트롤러에 넣어줘야 하는거야. 같은 이름으로 . 액션의 queWrite 라는 이름으로 우리가 파라메터를 보내는 걸로 되어있는거야.-->
                      <form id="queWriteForm" action="queWrite" method="post">
                    <div class="row">
                        <div class="col-md-2">
                            <b>아이디</b>
                            ${mem_id}
                           <%-- ${question.mem_id} --%>
                              <%-- <input name="mem_id" class="form-control" type="text" 
              placeholder="${mem_id }" value="${mem_id }" readonly> --%>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-2">
                            <b>이메일 </b>
                            ${mem_email}
                             <%-- ${question.mem_email} --%>
                             <%--  <input name="mem_email" class="form-control" type="text" 
              placeholder="${mem_email }" value="${mem_email }" readonly> --%>
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
                        <div class="col-md-3">
                            <p>제목 </p>
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
                        <div class="col-md-5">
                            <p>
                                <!-- <input type="text" name="que_subject" value="제목을 입력하세요"/> -->
                                 <input name="que_subject" id = "queSubject" class="form-control" placeholder="제목을 입력해주세요" type="text"/>
                            </p>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                      
                    <hr/>
                    <div class="row">
                        <div class="col-md-2">
                            <p>내용*</p>
                        </div>
                        <div class="col-md-10">
                            
                              <!--   <textarea name="que_content">문의 내용을 입력하세요</textarea> -->
                                 <textarea name="que_content" type="text" style="height: 190px;" 
              class="form-control" placeholder="문의 내용을 입력해주세요." 
              id="queContent" cols="45" rows="8" required=""></textarea>
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                             
                            <!-- <button type="submit" class="btn btn-success">작성하기</button> -->
                             <!-- <input type="submit" id="que_write" value="작성하기"/> -->
                             <input type="button"  onclick="quebtn()" id="queBtn" value="작성하기"/>
                            <input type="button" onclick="location.href='./queList'" value="리스트"/>
                        </div>
                        
                        <div class="col-md-4">
                        </div>
                    </div>
                     </form>
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
