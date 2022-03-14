<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>EEEm</title>
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
	
	<style>
		#tab{
			/*여백*/
  			margin-top: 120px;
  			
  			/*가운데 정렬*/
			text-align: center;
			position: absolute;
  			left: 50%;
  			transform: translateX(-50%);	
		}
		#tab1{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
			
			/*위치*/
			position: absolute;
			margin-left: -50px;
			margin-top: -200px;
		}
		#tab2{
			/*위치*/
			position: relative;
			margin-left: 100px;
			margin-top: -200px;
		}
		#tab3{
			/*위치*/
			position: relative;
			margin-left: 250px;
			margin-top: -50px;
		}
		#tab4{
			/*위치*/
			position: relative;
			margin-left: 400px;
			margin-top: -50px;
		}
		#tab5{
			/*위치*/
			position: relative;
			margin-left: 550px;
			margin-top: -50px;
		}
		#tab6{
			/*위치*/
			position: relative;
			margin-left: 700px;
			margin-top: -50px;
		}
		#tab2,#tab3,#tab4,#tab5,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: 89B8FF;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		
		#tab2:hover,#tab3:hover,#tab4:hover,#tab5:hover,#tab6:hover{
			background-color: #7AD7BE;
			color : yellow;
		}
        .form-group input[type='button']{
            width: 120px;
            height: 40px;
            margin: 10 auto;
            display: block;
            background-color: white;
            border: 2px solid rgb(197, 197, 197);
            border-radius: 15px;
            font-weight: 600;
            font-size: 13px;

        }
        #subBtn{
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
        }

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
        
	</style>

</head>
<body id=testFix>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<section>
           <div>
               <div>
                   <div>
                       <nav>
                       <br/><br/><br/><br/><br/><br/><br/><br/>
                           <div id="tab">
                               <div id="tab1" onclick="location.href='http://localhost:8080/eeem/myPageUpdate'" style="cursor:pointer;">회원정보수정</div>
                               <div id="tab2" onclick="location.href='http://localhost:8080/eeem/myPageLike'" style="cursor:pointer;">즐겨찾기</div>
                               <div id="tab3" onclick="location.href='http://localhost:8080/eeem/myPageMake'" style="cursor:pointer;">개설한 모임</div>
                               <div id="tab4" onclick="location.href='http://localhost:8080/eeem/myPageJoin'" style="cursor:pointer;">신청한 모임</div>
                               <div id="tab5" onclick="location.href='http://localhost:8080/eeem/myPageQna'" style="cursor:pointer;">내가 작성한 문의</div>
                               <div id="tab6" onclick="location.href='http://localhost:8080/eeem/myPagePoint'" style="cursor:pointer;">포인트 내역</div>
                           </div>
                       </nav>               
					    <div class="container-fluid">
					        <div class="row" style="background-color: 89B8FF;">
					            <div class="col-md-12">
					                <br/>
					            </div>
					        </div>
					        <div class="row" style="background-color: 89B8FF;">
					            <div class="col-md-4">
					                
					            </div>
					            <div class="col-md-4" style="background-color: ffffff;" id="inputBox">
					                <h3 class="text-center">
					                <br/><br/>
					                    <b>
					                        회원 정보 수정
					                    </b>
					                </h3>
					                <form id="memberUpdate" action="memberUpdate" method="post">
					                    <div class="form-group">
					                         
					                        <label for="exampleInputId">
					                            아이디
					                        </label>
					                        <input type="text" name="mem_id"  class="form-control" id="exampleInputId" value="${members.mem_id}" readonly="readonly"/>
					
					                    </div>
					                    <div class="form-group">
					                         
					                        <label for="exampleInputPassword1">
					                            비밀번호
					                        </label>
					                        <input type="password" name="mem_pw"  onkeyup="pwCheck()"  class="form-control" id="exampleInputPassword1" />
					                        <br/>
					                        <label for="exampleInputPassword2">
					                            비밀번호 확인
					                        </label>
					                        <input type="password" name="mem_pw2" onkeyup="pwCheck()" class="form-control" id="exampleInputPassword2" />
					                    	<label id="pwChk" for="exampleInputPassword2">
					                            <span></span>
					                        </label>
					                    </div>
					                    <div class="form-group">
					                        <label for="exampleInputName">
					                            이름
					                        </label>
					                        <input type="text" name="mem_name" placeholder="이름을 입력하세요" class="form-control" id="exampleInputName" value="${members.mem_name}" />
					                    </div>
					                    <div class="form-group">
					                        <label for="exampleInputEmail">
					                            이메일
					                        </label>
					                        <input type="email" name="mem_email" placeholder="이메일을 입력하세요" class="form-control" id="exampleInputEmail" value="${members.mem_email}"/>
					                    </div>
					                    <div class="form-group">
					                        <label for="exampleInputBirth">
					                            생년월일
					                        </label>
					                        <input type="text" name="mem_birth" placeholder="생년월일을 입력하세요 (ex 920704)" class="form-control" id="exampleInputBirth" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
					                    </div>
					                    <div class="form-group">
					                        <label for="exampleInputPhone">
					                            전화번호
					                        </label>
					                        <input type="text" name="mem_phone" placeholder="전화번호를 입력하세요 (ex 01012341234)" class="form-control" id="exampleInputPhone"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="${members.mem_phone}"/>
					                        <label id="phChk" for="exampleInputPhone">
					                            <span></span>
					                        </label>
					                        <input type="button" value="번호 중복확인" onclick="phoneCheck()"/>
					                        <br/>
					                    </div>					                     
					                    <div class="form-group" id="inputGender">
					                        <b>성별</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                        <input type="radio" name="mem_gender"  value="남" id="exampleInputGen1" checked="checked"/>
					                        <label id ="Gen1" for="exampleInputGen1">
					                            남자
					                        </label>
					                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                        &nbsp;&nbsp;&nbsp;&nbsp;
					                        <input type="radio" name="mem_gender" value="여" id="exampleInputGen2" />
					                        <label id ="Gen2" for="exampleInputGen2">
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
					                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
					                    <input id="subBtn" type="button" value="정보 수정하기" onclick="actSub()"/>
					                </form>
					                <br/>
					            </div>
					            <div class="col-md-4">
					            </div>
					        </div>
					        <div class="row" style="background-color: 89B8FF;">
					            <div class="col-md-12">
					                <br/>
					            </div>
					        </div>
					    </div>
                   </div>
               </div>
           </div>
       </section>
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}

$('input:radio[name=mem_gender]:input[value=${members.mem_gender}]').attr("checked", true);
$('input:radio[name=mem_interest]:input[value=${members.mem_interest}]').attr("checked", true);
$('input:radio[name=mem_region]:input[value=${members.mem_region}]').attr("checked", true);


let date = new Date("${members.mem_birth}")

var birthYear = date.getYear();
var birthMonth = ("0" + (date.getMonth() + 1)).slice(-2);
var birthDate = ("0" + (date.getDate())).slice(-2);
var Birth = birthYear + birthMonth + birthDate;
$('input[name=mem_birth]').attr('value',Birth);



var $pw;
var $pwChk;
var pwChkResult=true;

	function pwCheck() {
	$pw=$('#exampleInputPassword1').val();
	$pwChk=$('#exampleInputPassword2').val();
	pwChkResult = $pw == $pwChk;
	if ($pw=='' && $pwChk=='') {
		pwChkResult=true;
		$('#pwChk span').html('기존 비밀번호 사용');
		$('#pwChk span').css('color','green');
	}else if($pwChk!==$pw || $pw!==$pwChk){
		pwChkResult=false;
		$('#pwChk span').html('비밀번호를 재확인 하세요');
		$('#pwChk span').css('color','red');
	}else if(pwChkResult && $pw!==''){
		$('#pwChk span').html('비밀번호가 일치합니다');
		$('#pwChk span').css('color','green');
	}else {
		pwChkResult=false;
		$('#pwChk span').html('비밀번호가 일치하지 않습니다');
		$('#pwChk span').css('color','red');
		}
	}


var phChk =false;
var phChkResult =false;
var $mem_phone = $('input[id="mem_phone"]');
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
					if($mem_phone =="${members.mem_phone}") {
						alert('기존 사용중이던 전화번호를 사용합니다.');
						phChkResult=true;
					}else if (data.result>0) {
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

function actSub() {
	if (!pwChkResult) {
		alert('비밀번호가 일치하지 않습니다.');
		$('#exampleInputPassword2').focus();
	}else if (!pwChkResult) {
		alert('비밀번호가 일치하지 않습니다.');
		$('#exampleInputPassword2').focus();
	}else if ($('#exampleInputName').val() == '') {
		alert('이름을 입력하세요.');
		$('#exampleInputName').focus();
	}else if ($('#exampleInputEmail').val() == '') {
		alert('이메일을 입력하세요.');
		$('#exampleInputName').focus();
	}else if ($('#exampleInputBirth').val() == '') {
		alert('생년월일을 입력하세요.');
		$('#exampleInputBirth').focus();
	} else if ($('#exampleInputBirth').val().toString().length != 6) {
		alert('생년월일은 6자리로 입력해주세요. ex) 901221');
		$('#exampleInputBirth').focus();
	}else if (!phChk) {
		if ($('#exampleInputPhone').val() == "${members.mem_phone}")  {
			if($('#exampleInputPassword1').val()=='' && $('#exampleInputPassword2').val()==''){
				$('input[name=mem_pw]').val('${members.mem_pw}');
				$('input[name=mem_pw2]').val('${members.mem_pw}');
				$($('#memberUpdate').submit());
			}else{
				$($('#memberUpdate').submit());
			}
		}else {
			alert('전화번호 중복여부를 확인해주세요.');
			$('#exampleInputPhone').focus();
			console.log($($('input[name="mem_pw"]')))
		}
	}else if (!phChkResult ) {
		alert('이미 사용중인 전화번호 입니다.');
		$('#exampleInputPhone').focus();
	}else{
		if($('#exampleInputPassword1').val()=='' && $('#exampleInputPassword2').val()==''){
			var answer = confirm('정보를 수정 하시겠습니까?');
			if (answer == true) {
			$('input[name=mem_pw]').val('${members.mem_pw}');
			$('input[name=mem_pw2]').val('${members.mem_pw}');
			$($('#memberUpdate').submit());
			}else{}
		}else{
			var answer = confirm('정보를 수정 하시겠습니까?');
			if (answer == true) {
			$($('#memberUpdate').submit());
			}else{}
		}
		
	}
}

</script>
<!--===============================================================================================-->	
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/slick/slick.min.js"></script>
	<script src="resources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>
</html>