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
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	
	
	<style>
		#tab1{
			/*????????????*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*??????*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab2,#tab3,#tab4,#tab5,#tab6{
			/*????????????*/
			width: 150px;
			height: 50px;
			
			/*??????*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageUpdate #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageUpdate #tabBox div:hover,#myPageUpdate #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageUpdate #tabBox{
			background-color: 89B8FF;
		}
		#myPageUpdate #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
 		#myPageUpdate #myPageUpdateContainer{
			padding: 0px;
		} 
		
		#myPageUpdate #selectedTab, #myPageUpdate #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPageUpdate #tabBox{
			background-color: 89B8FF;
		}
		#myPageUpdate #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}

		
		#myPageUpdate #selectedTab, #myPageUpdate #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
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
        #myPageUpdate input[type="button"]{
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
        #myPageUpdate #inputInter label, #myPageUpdate #inputRegion label, #myPageUpdate #inputGender label
        ,#myPageUpdate #inputInter input, #myPageUpdate #inputRegion input, #myPageUpdate #inputGender input {
        display : inline-block;
        }
        
	</style>

</head>
<body id="myPageUpdate">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageUpdateContainer">
		<!-- ========================================?????? ???========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div  id="selectedTab" class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>???????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageLike'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageJoin'">
						<p>????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageQna'">
						<p>?????? ????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPagePoint'">
						<p>????????? ??????</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/>
		
		<!-- ========================================????????? ??????========================================= -->
             
	    <div class="container-fluid">
	        <div class="row" style="background-color: 89B8FF;">
	            <div class="col-md-12">
	                <br/>
	            </div>
	        </div>
	        <div class="row" style="background-color: 89B8FF;">
	            <div class="col-md-4">
	                
	            </div>
	            <div class="col-md-4" style="background-color: ffffff; border-radius: 10px;" id="inputBox">
	                <h3 class="text-center">
	                <br/><br/>
	                    <b>
	                        ?????? ?????? ??????
	                    </b>
	                </h3>
	                <form id="memberUpdate" action="memberUpdate" method="post">
	                    <div class="form-group">
	                         
	                        <label for="exampleInputId">
	                            ?????????
	                        </label>
	                        <input type="text" name="mem_id"  class="form-control" id="exampleInputId" value="${members.mem_id}" readonly="readonly"/>
	
	                    </div>
	                    <div class="form-group">
	                         
	                        <label for="exampleInputPassword1">
	                            ????????????
	                        </label>
	                        <input type="password" name="mem_pw"  onkeyup="pwCheck()"  class="form-control" id="exampleInputPassword1" />
	                        <br/>
	                        <label for="exampleInputPassword2">
	                            ???????????? ??????
	                        </label>
	                        <input type="password" name="mem_pw2" onkeyup="pwCheck()" class="form-control" id="exampleInputPassword2" />
	                    	<label id="pwChk" for="exampleInputPassword2">
	                            <span></span>
	                        </label>
	                    </div>
	                    <div class="form-group">
	                        <label for="exampleInputName">
	                            ??????
	                        </label>
	                        <input type="text" name="mem_name" placeholder="????????? ???????????????" class="form-control" id="exampleInputName" value="${members.mem_name}" />
	                    </div>
	                    <div class="form-group">
	                        <label for="exampleInputEmail">
	                            ?????????
	                        </label>
	                        <input type="email" name="mem_email" placeholder="???????????? ???????????????" class="form-control" id="exampleInputEmail" value="${members.mem_email}"/>
	                    </div>
	                    <div class="form-group">
	                        <label for="exampleInputBirth">
	                            ????????????
	                        </label>
	                        <input type="text" name="mem_birth" placeholder="??????????????? ??????????????? (ex 920704)" class="form-control" id="exampleInputBirth" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
	                    </div>
	                    <div class="form-group">
	                        <label for="exampleInputPhone">
	                            ????????????
	                        </label>
	                        <input type="text" name="mem_phone" placeholder="??????????????? ??????????????? (ex 01012341234)" class="form-control" id="exampleInputPhone"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="${members.mem_phone}"/>
	                        <label id="phChk" for="exampleInputPhone">
	                            <span></span>
	                        </label>
	                        <input type="button" value="?????? ????????????" onclick="phoneCheck()" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
                        	 style="margin: 0 auto; height: 35px; font-size: 13px; font-weight: 600;"/>
	                        <br/>
	                    </div>					                     
	                    <div class="form-group" id="inputGender">
	                        <b>??????</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_gender"  value="??????" id="exampleInputGen1"/>
	                        <label id ="Gen1" for="exampleInputGen1">
	                            ??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_gender" value="??????" id="exampleInputGen2" />
	                        <label id ="Gen2" for="exampleInputGen2">
	                            ??????
	                        </label>
	                        
	                    </div>
	                    <br/>
	                    <div class="form-group" id="inputInter">
	                        <b>????????????</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" value="0" name="mem_interest" id="exampleInputInterest1"/>
	                        <label for="exampleInputInterest1">
	                            ??????/??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" value="1" name="mem_interest" id="exampleInputInterest2" />
	                        <label for="exampleInputInterest2">
	                            ??????/?????????
	                        </label>
	                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" value="2" name="mem_interest" id="exampleInputInterest3" />
	                        <label for="exampleInputInterest3">
	                            ??????/?????????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" value="3" name="mem_interest" id="exampleInputInterest4" />
	                        <label for="exampleInputInterest4">
	                            ??????/??????
	                        </label>
	                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" value="4" name="mem_interest" id="exampleInputInterest5" />
	                        <label for="exampleInputInterest5">
	                            ?????????/??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                       <input type="radio" value="5" name="mem_interest" id="exampleInputInterest6" />
	                       <label for="exampleInputInterest6">
	                        ????????????
	                        </label>
	                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" value="6" name="mem_interest" id="exampleInputInterest7" />
	                        <label for="exampleInputInterest7">
	                            ??????/??????/??????
	                        </label>
	 
	                    </div>
	                    <br/>
	                    <div class="form-group" id="inputRegion">
	                        <b>????????????</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region" value="0" id="exampleInputRegion1"/>
	                        <label for="exampleInputRegion1">
	                            ??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region" value="1" id="exampleInputRegion2" />
	                        <label for="exampleInputRegion2">
	                            ??????
	                        </label>
	                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region" value="2" id="exampleInputRegion3" />
	                        <label for="exampleInputRegion3">
	                            ??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region"  value="3" id="exampleInputRegion4" />
	                        <label for="exampleInputRegion4">
	                            ??????
	                        </label>
	                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region" value="4" id="exampleInputRegion5" />
	                        <label for="exampleInputRegion5">
	                            ??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                       <input type="radio" name="mem_region" value="5" id="exampleInputRegion6" />
	                       <label for="exampleInputRegion6">
	                        ??????
	                        </label>
	                        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region" value="6" id="exampleInputRegion7" />
	                        <label for="exampleInputRegion7">
	                            ??????
	                        </label>
	                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="mem_region" value="7" id="exampleInputRegion8" />
	                        <label for="exampleInputRegion8">
	                            ?????????
	                        </label>
	                    </div>
	                    <br/>
	                    <input id="subBtn" type="button" value="?????? ????????????" onclick="actSub()" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
                    	style="margin: 0 auto; width: 60%; height: 40px; font-size: 16px; font-weight: 600;"/>
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
		$('#pwChk span').html('?????? ???????????? ??????');
		$('#pwChk span').css('color','green');
	}else if($pwChk!==$pw || $pw!==$pwChk){
		pwChkResult=false;
		$('#pwChk span').html('??????????????? ????????? ?????????');
		$('#pwChk span').css('color','red');
	}else if(pwChkResult && $pw!==''){
		$('#pwChk span').html('??????????????? ???????????????');
		$('#pwChk span').css('color','green');
	}else {
		pwChkResult=false;
		$('#pwChk span').html('??????????????? ???????????? ????????????');
		$('#pwChk span').css('color','red');
		}
	}


var phChk =false;
var phChkResult =false;
var $mem_phone = $('input[id="mem_phone"]');
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
					if($mem_phone =="${members.mem_phone}") {
						alert('?????? ??????????????? ??????????????? ???????????????.');
						phChkResult=true;
					}else if (data.result>0) {
						alert('?????? ???????????? ???????????? ?????????.');
						$('#exampleInputPhone').focus();
						phChkResult=false;
					}else {
						alert('?????? ????????? ???????????? ?????????.');
						phChkResult=true;
					}
				},
				error: function(e) {
					console.log(e);
				}
			});
			
		}else{
			$('#phChk span').html('?????? 11????????? ???????????????');
			$('#phChk span').css('color','red');
		}
	}else{
		alert('??????????????? ???????????????.');
	}
}

var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/; //????????? ?????????
function actSub() {
	if (!pwChkResult) {
		alert('??????????????? ???????????? ????????????.');
		$('#exampleInputPassword2').focus();
	}else if (!pwChkResult) {
		alert('??????????????? ???????????? ????????????.');
		$('#exampleInputPassword2').focus();
	}else if ($('#exampleInputName').val() == '') {
		alert('????????? ???????????????.');
		$('#exampleInputName').focus();
	}else if ($('#exampleInputEmail').val() == '') {
		alert('???????????? ???????????????.');
		$('#exampleInputEmail').focus();
	}else if (!emailRegExp.test($('#exampleInputEmail').val())) {
		alert('???????????? ????????? ?????? ???????????????.');
		$('#exampleInputEmail').focus();
	}else if ($('#exampleInputBirth').val() == '') {
		alert('??????????????? ???????????????.');
		$('#exampleInputBirth').focus();
	} else if ($('#exampleInputBirth').val().toString().length != 6) {
		alert('??????????????? 6????????? ??????????????????. ex) 901221');
		$('#exampleInputBirth').focus();
	}else if (!phChk) {
		if ($('#exampleInputPhone').val() == "${members.mem_phone}")  {
			if($('#exampleInputPassword1').val()=='' && $('#exampleInputPassword2').val()==''){
				var answer = confirm('????????? ?????? ???????????????????');
				if (answer == true) {
				$('input[name=mem_pw]').val('${members.mem_pw}');
				$('input[name=mem_pw2]').val('${members.mem_pw}');
				$($('#memberUpdate').submit());
				}else{}
			}else{
				var answer = confirm('????????? ?????? ???????????????????');
				if (answer == true) {
				$($('#memberUpdate').submit());
				}else{}
			}
		}else {
			alert('???????????? ??????????????? ??????????????????.');
			$('#exampleInputPhone').focus();
			console.log($($('input[name="mem_pw"]')))
		}
	}else if (!phChkResult ) {
		alert('?????? ???????????? ???????????? ?????????.');
		$('#exampleInputPhone').focus();
	}else{
		if($('#exampleInputPassword1').val()=='' && $('#exampleInputPassword2').val()==''){
			var answer = confirm('????????? ?????? ???????????????????');
			if (answer == true) {
			$('input[name=mem_pw]').val('${members.mem_pw}');
			$('input[name=mem_pw2]').val('${members.mem_pw}');
			$($('#memberUpdate').submit());
			}else{}
		}else{
			var answer = confirm('????????? ?????? ???????????????????');
			if (answer == true) {
			$($('#memberUpdate').submit());
			}else{}
		}
		
	}
}


</script>
</html>