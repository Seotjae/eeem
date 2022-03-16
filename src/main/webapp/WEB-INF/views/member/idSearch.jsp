<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디 찾기</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
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
<body style="background-color: 89B8FF;" id=testFix>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<br/>
	<br/>
	<br/>
    <div class="container-fluid">
        <div class="row" style="background-color: 89B8FF;">
            <div class="col-md-12">
                <br/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4" style="background-color: 89B8FF;">
                
            </div>
            <div class="col-md-4" style="background-color: ffffff;" id="inputBox">
            	<br/>
            	<br/>
                <h3 class="text-center">
                    <b>
                        	아이디 찾기
                    </b>
                </h3>
                
                <form id="idSearch" action="idSearch" method="post">
                    <div class="form-group">
                         <br/>
                     	  이름
                     	  <br/>&nbsp;
                     	  <input type="text" id="mem_name" name="mem_name" placeholder="이름을 입력하세요" class="form-control"/>
            		</div>
                    &nbsp;
                    <div class="form-group">
	                                        휴대폰 번호
	                    <br/>&nbsp;
	            	    	<input type="text" id="mem_phone" name="mem_phone" placeholder="( - ) 빼고 입력해주세요" 
	            	    		 maxlength="11" class="form-control"/>
	                    </div>
                    <br/>
 
                    <br/> 
					<input type="button" onclick="idSearch()" value ="아이디 찾기" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"/>
					                  
                    <br/>&nbsp;
                </form>
                <br/>
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
	

	
	function idSearch(){
		var mem_name = $('#mem_name');
		console.log(mem_name);
		
		if (mem_name.val()=="") {
			alert('이름을 입력하세요');
			$('#mem_name').focus();
		}else if($('#mem_phone').val()==""){
			alert('휴대폰 번호를 입력하세요');
		$('#mem_phone').focus();
		
		}else{
			$('#idSearch').submit();
		}
		
		
	}
		var msg = "${msg}";
		if (msg != "") {
			alert(msg);
		}
	/*
	function loginalert(){
		console.log('')
		
		if ($('#mem_id').val() == '') {
			alert('아이디를 입력하세요.');
			$('#mem_id').focus();
		
		}else if($('#mem_pw').val() == ''){
			alert('패스워드를 입력하세요.');
			$('#mem_pw').focus();
		}else{
			$('#loginForm').submit();
		}
	
	}
	var msg = "${loginmsg}";
	if (msg != "") {
		alert(msg);
	}
	*/
	</script>


</html>