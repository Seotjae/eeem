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

		<c:if test="${size == 0}">
				<tr><td colspan="4">작성된 글이 없습니다.</td></tr>
		</c:if>

		<c:if test="${size > 0}">


			<c:forEach items="${list}" var="question">
				<tr>
					<td>${question.que_num}</td>
					<td><a href="./queDetail?que_num=${question.que_num}">${question.que_subject}</a></td>
					<td>${question.mem_id}</td>
					<td>${question.mem_email}</td>
					<td>${question.que_date}</td>
					
				</tr>
			</c:forEach>
		</c:if>
	</table>

</body>
</html>