<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<style></style>
</head>
<body>


<!-- 2022-03-10 문의하기 글쓰기 -->
	<form action=write method="post">
		<table>
		
			<tr>
				<th>아이디</th>
				<td><input type="text" name="mem_id"/></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input type="text" name="mem_email"/></td>
			</tr>
			
				<tr>
				<th>제목</th>
				<td><input type="text" name="que_subject"/></td>
			</tr>
			
			<tr>
				<th>내용</th>
				<td><textarea name="que_content"></textarea></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="button" onclick="location.href='./list'" value="리스트"/>
				<input type="submit" value="저장"/>
				</th>
			</tr>
		</table>
	</form>

</body>


</html>