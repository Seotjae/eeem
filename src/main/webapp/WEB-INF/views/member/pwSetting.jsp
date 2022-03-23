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
                    	비밀번호 변경
                    </b>
                </h3>
                
                <form id="mem_pwchk" action="mem_pwchk" method="post">
                    <div class="form-group">
                         <br/>
                     	  비밀번호
                     	  <br/>&nbsp;
                     	  <input type="password" id="mem_pw" name="mem_pw" placeholder="비밀번호를 입력하세요" class="form-control"/>
            		</div>
                    &nbsp;
                    <div class="form-group">
	                                        비밀번호 확인
	                    <br/>&nbsp;
	            	    	<input type="password" id="mem_chkPw" name="mem_chkPw" placeholder="비밀번호를 입력하세요" 
	            	    		class="form-control"/>
	                </div>
                    		<input type="hidden" name="mem_id" value="${mem_id}"/>
                    <br/>
 					<br/> 
					<input type="button" onclick="mem_pwchk()" value ="비밀번호 변경" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"/>
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
	
	var msg = "${msg}";
	if (msg != "") {
		alert(msg);
	}
	

	
	function mem_pwchk(){
		var mem_pw = $('#mem_pw').val();
		var mem_chkPw = $('#mem_chkPw').val();
		
		
		if (mem_pw=="") {
			alert('아이디를 입력하세요');
			$('#mem_pw').focus();
		}else if (mem_chkPw==""){
			alert('이름을 입력하세요');
			$('#mem_chkPw').focus();
		}else if(mem_pw != mem_chkPw){
			alert('입력하신 비밀번호가 서로 일치하지 않습니다. 다시 입력해주세요')
		}else{
			$('#userPwChk').submit();
		}
	}



	</script>


</html>