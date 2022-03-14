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
	<style></style>
</head>
<body>
<%-- <!-- 찍어서 확인해주는거야. 값이 제대로 들어갔는지! -->
 ${bbs} / ${bbs.content}
<table>
<tr>
	<th>글번호</th>
	<td>${info.idx}</td>
	<td>${question.que_num}</td>
	</tr>
	<tr>
		<th>작성자</th>
	<td>${question.mem_id}</td>
	<td>${info.user_name}</td>
	</tr>
	<tr>
		<th>이메일</th>
	<td>${members.mem_email}</td>
	<td>${info.user_name}</td>
	</tr>
	<tr>
	<th>제목</th>
	<td>${info.subject} <b>(${info.bHit})</b></td>
	<td>${question.que_subject}</td>
	</tr>

	<tr>
	<th>내용</th>
	<td>${question.que_content}</td>
	<td>${info.content}</td>
	</tr>
	<tr>
	<th colspan="2">
	<input type="button" onclick="location.href='./'" value="리스트"/>
	</th>
	</tr>
</table>
 --%>

<div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-2">
                            <h3>
                                <input type="button" onclick="location.href='./queList'" value="뒤로가기"/>
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
                        <div class="col-md-2">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <h3>
                                문의하기 상세보기
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
                    <div class="row">
                        <div class="col-md-2">
                            <h3>
                                아이디
                            </h3>
                        </div>
                        <div class="col-md-2">
                            <h3>
                               ${question.mem_id}
                            </h3>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-2">
                            <h3>
                                문의분류
                            </h3>
                        </div>
                        <div class="col-md-2">
                            <h3>
                                ${question.que_category}
                                
                            </h3>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-2">
                            <h3>
                                이름
                            </h3>
                        </div>
                        <div class="col-md-2">
                            <h3>
                                ${question.mem_name}
                            </h3>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-2">
                            <h3>
                                처리자
                            </h3>
                        </div>
                        <div class="col-md-2">
                            <h3>
                               ${question.que_admin}
                            </h3>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-3">
                            <h3>
                                제목
                            </h3>
                        </div>
                        <div class="col-md-2">
                            <p>${question.que_subject}</p>
                        </div>
                        <div class="col-md-5">
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-2">
                            <h3>
                                내용
                            </h3>
                        </div>
                        <div class="col-md-8">
                        </div>
                        <div class="col-md-2">
                            <input type="button" onclick="del()" value="삭제"/>
                        </div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-10">
                            <p>
                                ${question.que_content}
                            </p>
                        </div>
                    </div>
                    <hr/>
                </div>
            </div>
        </div>



</body>

<script>

/*  function del(){
	var yn = confirm("정말 이 글을 삭제하시겠습니까?");
	
	if(yn){
		location.href='./delete?mem_id=${question.mem_id}';
	}
	
} 
 */
 function del(){
		var yn = confirm("삭제하시겠습니까?");
		
		if(yn){
			location.href='./delete?que_num=${question.que_num}';
		}
		
	}


</script>
</html>




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<link rel="styleSheet" type="text/css" href="resources/css/common.css">
	<style></style>
</head>
<body>
<table>
<tr>
	<th>글번호</th>
	<td>${info.idx}</td>
	</tr>
	<tr>
	<th>제목</th>
	<td>${info.subject} <b>(${info.bHit})</b></td>
	</tr>
	<tr>
	<th>작성자</th>
	<td>${info.user_name}</td>
	</tr>
	<tr>
	<th>내용</th>
	<td>${info.content}</td>
	</tr>
	<tr>
	<th colspan="2">
	<input type="button" onclick="location.href='./'" value="리스트"/>
	<input type="button" onclick="location.href='./updateForm?idx=${info.idx}'" value="수정"/>
	<input type="button" onclick="del()" value="삭제"/>
	<input type="button" onclick="location.href='./delete?idx=${info.idx}'" value="삭제"/>
	</th>
	</tr>
</table>
</body>
<script>

function del(){
	var yn = confirm("정말 이 글을 삭제하시겠습니까?");
	
	if(yn){
		location.href='./delete?idx=${info.idx}';
	}
	
}



</script>
</html> --%>




