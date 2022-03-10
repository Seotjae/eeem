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
	
	</style>
</head>
<body>
	<section id="tabs" class="project-tab">
           <div class="container">
               <div class="row">
                   <div class="col-md-12">
                       <nav>
                           <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                               <a class="nav-item nav-link" id="nav-update-tab" data-toggle="tab" href="myPageUpdate" role="tab" aria-controls="nav-update" aria-selected="false">회원정보수정</a>
                               <a class="nav-item nav-link active" id="nav-like-tab" data-toggle="tab" href="myPageLike" role="tab" aria-controls="nav-like" aria-selected="true">즐겨찾기</a>
                               <a class="nav-item nav-link" id="nav-make-tab" data-toggle="tab" href="myPageMake" role="tab" aria-controls="nav-make" aria-selected="false">개설한 모임</a>
                               <a class="nav-item nav-link" id="nav-join-tab" data-toggle="tab" href="myPageJoin" role="tab" aria-controls="nav-join" aria-selected="false">신청한 모임</a>
                               <a class="nav-item nav-link" id="nav-qna-tab" data-toggle="tab" href="myPageQna" role="tab" aria-controls="nav-qna" aria-selected="false">내가 작성한 문의</a>
                               <a class="nav-item nav-link" id="nav-point-tab" data-toggle="tab" href="myPagePoint" role="tab" aria-controls="nav-point" aria-selected="false">포인트 내역</a>
                           </div>
                       </nav>
                       <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active" id="nav-like" role="tabpanel" aria-labelledby="nav-like-tab">
                               <table class="table" cellspacing="0">
                                   <thead>
                                       <tr>
                                           <th>Project Name</th>
                                           <th>Employer</th>
                                           <th>Time</th>
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