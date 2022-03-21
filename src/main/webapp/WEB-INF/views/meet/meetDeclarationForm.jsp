<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>신고내용</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	
	<style>
	.textBox1{
	border: 1px solid black;
	width: 470px;
	height: 35px;
	}
	
	input[type="text"]:disabled {
	  background: #e9ecef;
	}
	.mcenter{
	border: 1px solid black;
	padding: inherit;
	}
	
	input[type=radio] {
    border: 0px;
    width: 112px;
    height: 3em;
}
	
	</style>
	
	
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->



<!--===============================================================================================-->	
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>

<!--===============================================================================================-->
	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="resources/js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>





</head>
<body style="background-color: green;" id=testFix>


    <div class="container-fluid">
        <div class="row" style="background-color: red;">
            <div class="col-md-12">
                <br/>
            </div>
        </div>
 
 		<div class="declarationWrite">
			<!--                     신고하기 팝업 -->
			
		<!---------------------==================== 팝업 ===================----------------- -->
		<!-- <form action="sct_regist" method="post"> -->
		<form id="declarationForm" action="declarationWrite" method="post">
		<div class="pop1">
		<div class="container-fluid">
    <div class="row">
    <div class="col-md-2">
    </div>
        <div class="col-md-8">
            <h2 class="h44">신고하기</h2>
        </div>
         <div class="col-md-2">
    </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-2">
            <p>신고대상(개설자의 아이디)</p>
        </div>
        <br/>
        <div class="col-md-10">
        	<!-- <input type="hidden" name="dec_num"/> --> 
        	<!--  -->
            <input type="text" name="targetId" value="${targetId}" placeholder="${targetId}" class="form-control" readonly/>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-2">
            <p>모임 제목(번호)</p>
        </div>
        <br/>
        <div class="col-md-10">
        <!--  -->
        <input type="hidden" value="${targetNum}" name="targetNum"  placeholder="${targetNum}"/>
            <input type="text" name="targetContent" value="${targetContent}" placeholder="${targetNum}/${targetContent}" class="form-control" readonly/>
        </div>
    </div>
     <div class="row">
        <div class="col-md-2">
            <p>신고내용</p>
        </div>
        <br/>
        <div class="col-md-10">
            <input type="text" id="dec_content" placeholder="내용" class="form-control"/>
        </div>
    </div>
    <br/>
    <br/>
    <div class="row">
        <div class="col-md-12 del2">
            <input type="submit" value="확인" class="del1"/>
            <button class="del1">취소</button>
        </div>
    </div>
</div>
</div>
		</form>
</div>
			<!--                     신고하기 팝업 -->
 
    </div>
    
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

</body>
	
	<script>
	
	

</script>


</html>