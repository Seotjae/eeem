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
	/*
		table,td,th{
			border : 1px solid black;
			border-collapse : collapse;
			padding : 5px 10px;
		}
		
		#my1{
			color : yellow;
			background-color: green;
		}
		
		#my2,#my3,#my4,#my5,#my6{
			color : white;
			background-color: blue;
		}
		*/

		
	
	</style>
</head>
<body>
	<!-- 마이페이지 
	<div>
		<table>
			<tr>
				<th id="my1">회원정보수정</th>
				<th id="my2">즐겨찾기</th>
				<th id="my3">개설한 모임</th>
				<th id="my4">신청한 모임</th>
				<th id="my5">내가 작성한 문의</th>
				<th id="my6">포인트 내역</th>
			</tr>
		</table>
	</div>-->

<!------ Include the above in your HEAD tag ---------->

		<section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="tab1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">회원정보수정</a>
                                <a class="nav-item nav-link" id="tab2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">즐겨찾기</a>
                                <a class="nav-item nav-link" id="tab3" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false">개설한 모임</a>
                                <a class="nav-item nav-link" id="tab4" data-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false">신청한 모임</a>
                                <a class="nav-item nav-link" id="tab5" data-toggle="tab" href="#tab5" role="tab" aria-controls="tab5" aria-selected="false">내가 작성한 문의</a>
                                <a class="nav-item nav-link" id="tab6" data-toggle="tab" href="#tab6" role="tab" aria-controls="tab6" aria-selected="false">포인트 내역</a>
                            </div>
                        </nav>
                        <div class="tab1" id="tab1">
                            <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="nav-update-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>회원정보수정</th>
                                            <th>즐겨찾기</th>
                                            <th>개설한 모임</th>
                                            <th>신청한 모임</th>
                                            <th>내가 작성한 문의</th>
                                            <th>포인트 내역</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="nav-like" role="tabpanel" aria-labelledby="nav-like-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>회원정보수정</th>
                                            <th>즐겨찾기</th>
                                            <th>개설한 모임</th>
                                            <th>신청한 모임</th>
                                            <th>내가 작성한 문의</th>
                                            <th>포인트 내역</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="nav-makeMeet" role="tabpanel" aria-labelledby="nav-makeMeet-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>회원정보수정</th>
                                            <th>즐겨찾기</th>
                                            <th>개설한 모임</th>
                                            <th>신청한 모임</th>
                                            <th>내가 작성한 문의</th>
                                            <th>포인트 내역</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
<script></script>
</html>