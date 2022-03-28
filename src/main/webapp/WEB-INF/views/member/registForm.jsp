<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<title>회원가입</title>
	<style>
        /* .form-group input[type='button']{
            width: 120px;
            height: 40px;
            margin: 10 auto;
            display: block;
            background-color: white;
            border: 2px solid rgb(197, 197, 197);
            border-radius: 15px;
            font-weight: 600;
            font-size: 13px;

        } */
        /* #subBtn{
            background-color: white;
            width: 130px;
            height: 50px;
            border: 2px solid rgb(75, 75, 75);
            border-radius: 15px;
            font-weight: 600;
            font-size: 16px;
            margin: 0 auto;
            display: block;
            
        }
        #testFix input[type="button"]{
        	cursor: pointer;
        } */

        #inputBox{
            padding: 0px 50px;
        }

        #inputInter label, #inputRegion label, #inputGender label{
            color: black;
            font-size: 14px;
            font-weight: 400;
        }
        #pwChk span, #phChk span{
        	font-size: 12px;
        	margin-left: 10px; 
        }
        #testFix #inputInter label, #testFix #inputRegion label, #testFix #inputGender label
        ,#testFix #inputInter input, #testFix #inputRegion input, #testFix #inputGender input {
        display : inline-block;
        }
        
        #testFix .container-fluid{
        	background-color: 89B8FF;
        }
        
	</style>
	
	
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
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
		<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="resources/vendor/MagnificPopup/magnific-popup.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
		<!-- <link rel="stylesheet" type="text/css" href="resources/css/util.css"> -->
		<link rel="stylesheet" type="text/css" href="resources/css/main.css">
	<!--===============================================================================================-->
	
	
	 <!-- 합쳐지고 최소화된 최신 CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->

    <!-- 부가적인 테마 -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
	
	
</head>
<body id=testFix>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<br/>
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
            <div class="col-md-4" style="background-color: ffffff; border-radius: 10px;" id="inputBox">
            	<br/>
            	<br/>
                <h3 class="text-center">
                    <b>
                        회원가입
                    </b>
                </h3>
                <br/>
                <br/>
                <form id="registForm" action="regist" method="post">
                    <div class="form-group">
                         
                        <label for="exampleInputId">
                            아이디
                        </label>
                        <input type="text" name="mem_id" placeholder="아이디를 입력하세요" class="form-control" id="exampleInputId" style="margin-bottom: 10px;"/>
                        <input type="button" value="아이디 중복확인" onclick="idCheck()" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
                        	 style="margin: 0 auto; height: 35px; font-size: 13px; font-weight: 600;"/>

                    </div>
                    <div class="form-group">
                         
                        <label for="exampleInputPassword1">
                            비밀번호
                        </label>
                        <input type="password" name="mem_pw"  onkeyup="pwCheck()" placeholder="비밀번호를 입력하세요" class="form-control" id="exampleInputPassword1" />
                        <br/>
                        <label for="exampleInputPassword2">
                            비밀번호 확인
                        </label>
                        <input type="password" placeholder="비밀번호 확인"  onkeyup="pwCheck()" class="form-control" id="exampleInputPassword2" />
                    	<label id="pwChk" for="exampleInputPassword2">
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName">
                            이름
                        </label>
                        <input type="text" name="mem_name" placeholder="이름을 입력하세요" class="form-control" id="exampleInputName" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail">
                            이메일
                        </label>
                        <input type="email" name="mem_email" placeholder="이메일을 입력하세요" class="form-control" id="exampleInputEmail" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputBirth">
                            생년월일
                        </label>
                        <input type="text" name="mem_birth" placeholder="생년월일을 입력하세요 (ex 920704)" class="form-control" id="exampleInputBirth" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="6"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPhone">
                            전화번호
                        </label>
                        <input type="text" name="mem_phone" placeholder="전화번호를 입력하세요 (ex 01012341234)" class="form-control" id="exampleInputPhone"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="11" style="margin-bottom: 10px;"/>
                        <label id="phChk" for="exampleInputPhone">
                            <span></span>
                        </label>
                        <input type="button" value="번호 중복확인" onclick="phoneCheck()" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
                        	 style="margin: 0 auto; height: 35px; font-size: 13px; font-weight: 600;"/>
                        <br/>
                    </div>
                    <div class="form-group" id="inputGender">
                        <b>성별</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_gender"  value="남자" id="exampleInputGen1" checked="checked"/>
                        <label for="exampleInputGen1">
                            남자
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_gender" value="여자" id="exampleInputGen2" />
                        <label for="exampleInputGen2">
                            여자
                        </label>
                        
                    </div>
                    <br/>
                    <div class="form-group" id="inputInter">
                        <b>선호분야</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="0" name="mem_interest" id="exampleInputInterest1" checked="checked"/>
                        <label for="exampleInputInterest1">
                            교육/강연
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="1" name="mem_interest" id="exampleInputInterest2" />
                        <label for="exampleInputInterest2">
                            취미/소모임
                        </label>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="2" name="mem_interest" id="exampleInputInterest3" />
                        <label for="exampleInputInterest3">
                            전시/박람회
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="3" name="mem_interest" id="exampleInputInterest4" />
                        <label for="exampleInputInterest4">
                            패션/뷰티
                        </label>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="4" name="mem_interest" id="exampleInputInterest5" />
                        <label for="exampleInputInterest5">
                            스포츠/게임
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" value="5" name="mem_interest" id="exampleInputInterest6" />
                       <label for="exampleInputInterest6">
                        기타모임
                        </label>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="6" name="mem_interest" id="exampleInputInterest7" />
                        <label for="exampleInputInterest7">
                            문화/예술/방송
                        </label>
 
                    </div>
                    <br/>
                    <div class="form-group" id="inputRegion">
                        <b>선호지역</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region" value="0" id="exampleInputRegion1" checked="checked"/>
                        <label for="exampleInputRegion1">
                            서울
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region" value="1" id="exampleInputRegion2" />
                        <label for="exampleInputRegion2">
                            경기
                        </label>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region" value="2" id="exampleInputRegion3" />
                        <label for="exampleInputRegion3">
                            충청
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region"  value="3" id="exampleInputRegion4" />
                        <label for="exampleInputRegion4">
                            강원
                        </label>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region" value="4" id="exampleInputRegion5" />
                        <label for="exampleInputRegion5">
                            전라
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="mem_region" value="5" id="exampleInputRegion6" />
                       <label for="exampleInputRegion6">
                        경상
                        </label>
                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region" value="6" id="exampleInputRegion7" />
                        <label for="exampleInputRegion7">
                            제주
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_region" value="7" id="exampleInputRegion8" />
                        <label for="exampleInputRegion8">
                            온라인
                        </label>
                    </div>
                    <br/>
                    <input id="subBtn" type="button" value="회원가입" onclick="actSub()"  class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
                    	style="margin: 0 auto; width: 60%; height: 40px; font-size: 16px; font-weight: 600;"/>
                </form>
                <br/>
            </div>
            <div class="col-md-4" style="background-color: 89B8FF;">
            </div>
        </div>
        <div class="row" style="background-color: 89B8FF;">
            <div class="col-md-12">
                <br/>
            </div>
        </div>
    </div>
    

</body>
<script>
	var $mem_id;
	var idChk = false;
	var idChkResult=false;
	$('#exampleInputId').change(function() {
		$mem_id=$(this).val().toString();
		idChk = false;
	});
	function idCheck() {
		idChkResult=false;
		$mem_id = $('#exampleInputId').val().toString();
		if ($mem_id !='') {
			idChk =true;
			$.ajax({
				type:'get',
				url:'idCheck',
				data:{'mem_id':$mem_id},
				dataType:'JSON',
				success : function(data) {
					if (data.result>0) {
						alert('이미 사용중인 아이디 입니다.');
						$('#exampleInputId').focus();
					}else {
						alert('사용가능한 아이디 입니다.');
						idChkResult = true;
					}
				},
				error: function(e) {
					console.log(e);
				}
			});
		}else {
			alert('아이디를 입력하세요.');
			$('#exampleInputId').focus();
		}
	}
	
	var $pw;
	var $pwChk;
	var pwChkResult=false;
	
	function pwCheck() {
		$pw=$('#exampleInputPassword1').val();
		$pwChk=$('#exampleInputPassword2').val();
		pwChkResult = $pw == $pwChk;
		if ($('#exampleInputPassword2').val()=='') {
			$('#pwChk span').html('비밀번호를 재확인 하세요');
			$('#pwChk span').css('color','red');
		}else{
			if(pwChkResult){
				$('#pwChk span').html('비밀번호가 일치합니다');
				$('#pwChk span').css('color','green');
			}else {
				$('#pwChk span').html('비밀번호가 일치하지 않습니다');
				$('#pwChk span').css('color','red');
			}
		}
	}
	
	var phChk =false;
	var phChkResult =false;
	var $mem_phone;
	$('#exampleInputPhone').change(function() {
		$mem_phone=$(this).val();
		phChk =false;
	});
	function phoneCheck() {
		$mem_phone= $('#exampleInputPhone').val().toString();
		if ($mem_phone != '') {
			if ($mem_phone.length == 11) {
				phChk = true;
				$('#phChk span').html('');
				
				$.ajax({
					type:'get',
					url:'phCheck',
					data:{'mem_phone':$mem_phone},
					dataType:'JSON',
					success : function(data) {
						if (data.result>0) {
							alert('이미 사용중인 전화번호 입니다.');
							$('#exampleInputPhone').focus();
						}else {
							alert('사용 가능한 전화번호 입니다.');
							phChkResult=true;
						}
					},
					error: function(e) {
						console.log(e);
					}
				});
				
			}else{
				$('#phChk span').html('숫자 11자리를 입력하세요');
				$('#phChk span').css('color','red');
			}
		}else{
			alert('전화번호를 입력하세요.');
		}
	}
	
	
	var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/; //이메일 유효성
	function actSub() {
		if ($mem_id == null ||$mem_id=='') {
			alert('아이디를 입력하세요.');
			$('#exampleInputId').focus();
		}else if (!idChk) {
			alert('아이디 중복여부를 확인해주세요.');
			$('#exampleInputId').focus();
		}else if (!idChkResult ) {
			alert('이미 사용중인 아이디 입니다.');
			$('#exampleInputId').focus();
		}else if ($pw==null) {
			alert('비밀번호를 입력하세요.');
			$('#exampleInputPassword1').focus();
		}else if (!pwChkResult) {
			alert('비밀번호가 일치하지 않습니다.');
			$('#exampleInputPassword2').focus();
		}else if ($('#exampleInputName').val() == '') {
			alert('이름을 입력하세요.');
			$('#exampleInputName').focus();
		}else if ($('#exampleInputEmail').val() == '') {
			alert('이메일을 입력하세요.');
			$('#exampleInputEmail').focus();
		}else if (!emailRegExp.test($('#exampleInputEmail').val())) {
			alert('이메일을 형식에 맞게 입력하세요.');
			$('#exampleInputEmail').focus();
		}else if ($('#exampleInputBirth').val() == '') {
			$('#exampleInputBirth').focus();
			alert('생년월일을 입력하세요.');
		} else if ($('#exampleInputBirth').val().toString().length != 6) {
			alert('생년월일은 6자리로 입력해주세요. ex) 901221');
			$('#exampleInputBirth').focus();
		}else if ($mem_phone == null ||$mem_id=='') {
			alert('전화번호를 입력해주세요.');
			$('#exampleInputPhone').focus();
		} else if (!phChk) {
			alert('전화번호 중복여부를 확인해주세요.');
			$('#exampleInputPhone').focus();
		}else if (!phChkResult ) {
			alert('이미 사용중인 전화번호 입니다.');
			$('#exampleInputPhone').focus();
		}else{
			$($('#registForm').submit());
		}
	}

	$('input[name="mem_name"]').keyup(function() {
		console.log('change');
		$(this).val( $(this).val().replace(/[^ㄱ-힣a-zA-Z]/gi,"") );
	});

</script>
</html>