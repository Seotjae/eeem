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
</head>
<body style="background-color: white;" id=testFix>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>


    <div class="container-fluid">
        <div class="row" style="background-color: white;">
            <div class="col-md-12">
                <br/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4" style="background-color: white;">
                
            </div>
            <div class="col-md-4" style="background-color: ffffff;" id="inputBox">
            	<br/>
            	<br/>
            	<br/>
            	<br/>
            	<div class="mcenter">
                <h2 class="text-center">
                    <b>
                        신고내용
                    </b>
                </h2>
                
                <form id="loginForm" action="loginForm" method="post">
                    <div class="form-group">
                         <br/>
                         <br/>
                     	  <b>신고대상</b>
                     	  <br/>&nbsp;
                     	  <input type="text" id="dec_targetId" name="dec_targetId" placeholder="신고대상" class="form-control" readonly/>
            		</div>
                    &nbsp;
                    <div class="form-group">
	                      <b>대상내용</b>
	                    <br/>&nbsp;
	            	    	<input type="text" id="dec_content" name="dec_content" placeholder="내용" class="form-control" readonly/>
	                 </div>
	                 <div class="form-group">
	                 <br/>
	                 <b>신고처리</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                 <br/>
	                 <br/>
	                 <div style="width:200px;">
					  <label for="r1">경고</label><input type="radio" name="radio" id="r1" value="1" checked>
					  <label for="r1">정지</label><input type="radio" name="radio" id="r1" value="1">
					  <label for="r2">없음</label><input type="radio" name="radio" id="r2" value="0">
					</div>
					<br/>
	                 <br/>
	                 <b>제재사유</b>
	                 <br/>
	                 <br/>
					<div style="width:200px;">
					  <input type="text" name="text" class="textBox1">
					</div>
					</div>
                    <br/>
					<input type="button" onclick="loginalert()" value ="확 인" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"/>
					<br/>
					<input type="button" onclick="location.href='managerDeclaration'" value ="취 소" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"/>
                    <br/>&nbsp;
                </form>
                <br/>
                </div>
            </div>

        </div>

    </div>
    
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

</body>








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

	
	<script>

  
  $(document).ready(function(){
	  
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=radio]").click(function(){
	 
	        if($("input[name=radio]:checked").val() == "1"){
	            $("input:text[name=text]").css('display','block');
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=radio]:checked").val() == "0"){
	              $("input:text[name=text]").css('display','none');
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});
      
</script>


</html>