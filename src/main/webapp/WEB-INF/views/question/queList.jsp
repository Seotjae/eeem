<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<!-- 이 링크가 무엇을 뜻하는지 나중에 다시 알아보기! -->
	<!-- 리소시즈를 불러오도록 해주는 거야. 밑에있는 이 링크는. -->
	<style></style>
</head>
<body>


<!-- 버튼으로 온클릭을 주고 그 안에 href를 쓰는게 가능하구나. *** -->
<button onclick="location.href='queWriteForm'">문의 작성하기</button>

	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>이메일</th>
			<th>작성일</th>
			 <%-- ${size} / ${list} --%>
		</tr>
<!-- <tr> -->
<!-- 여기서 받아올 것은 사이즈로 하나 리스트로 하나 받아올거야.  -->
<%-- ${size} / ${list} --%>
<!-- </tr> -->
<!-- 이 사이즈가 0보다 클 때와 0일때를 구분해줘! -->
		<c:if test="${size == 0}">
				<tr><td colspan="4">작성된 글이 없습니다.</td></tr>
		</c:if>

		<c:if test="${size > 0}">

			<!-- 리스트에 들어있는 것들을 퀘스쳔이라는 이름으로 받아서 꺼내온다. -->
			<c:forEach items="${list}" var="question">
				<tr>
					<td>${question.que_num}</td>
					<td><a href="./queDetail?que_num=${question.que_num}">${question.que_subject}</a></td>
					<!--  위에 이것만 만들어두고 바로 컨트롤러로 가면아돼. 1.디테일이라는 jsp를 만들어야하고 2.bbs의 idx를 받아와야돼. 3.포스트로 명시하지 않는이상 겟으로 받는거구나. -> 이게 맞지 않으면 404 에러가 떨어져. -->
					<td>${question.mem_id}</td>
					<td>${question.mem_email}</td>
					<td>${question.que_date}</td>
					
				</tr>
			</c:forEach>
		</c:if>
	</table>

</body>
</html>