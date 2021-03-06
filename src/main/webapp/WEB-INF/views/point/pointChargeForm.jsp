<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>포인트환전</title>
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
        <link rel="stylesheet" type="text/css" href="resources/css/util.css">
        <link rel="stylesheet" type="text/css" href="resources/css/main.css">
    <!--===============================================================================================-->
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	
	<style>
		#myPtCh .row{
			margin:0px;
		}
		#myPtCh #tabBox div{
			height: 40px;
			padding: 0px;
			background-color: 89B8FF;
			margin-right: 10px;
			border-radius: 5px;
		}
		#myPtCh #tabBox div:hover,#myPtEx #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPtCh #tabBox p{
			font-family: Poppins-Bold;
			line-height:45px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 15px;
			font-weight: 600;
			color : white;
			border-radius: 5px;
			
		}
		
		
		#myPtCh #selectedTab1, #myPtCh #selectedTab1 p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		
		#myPtCh #tabHr{
			border-top: 2px solid rgba(0,0,0,.5);
		}
		
		
		
		#myPtCh #leftCol{
			display: flex;
			align-items: center;
			justify-content: center;
			height: 50px;
		}
		
			#myPtCh #leftCol2{
			display: flex;
			align-items: center;
			justify-content: center;
			height: 120px;
		}
		
		#myPtCh #centCol{
			display: flex;
			align-items: center;
			height: 50px;
			
		}
		
		 #myPtCh #centerAlign{
			display: flex;
			align-items: center;
			justify-content: center;
		} 
		
 		/* 라디오 버튼 */
	    #inputInter label, #inputRegion label, #inputGender label{
            color: black;
            font-size: 14px;
            font-weight: 400;
        } 
        
        #submitBtn{
			width: 60px;
			height: 35px;
			border-radius: 10px;
		}
		
		 #myPtCh #radioResult{
			display: flex;
			align-items: center;
			justify-content: left;
			height: 50px;
		}
		
		
				
     /*  #testFix #inputInter label, #testFix #inputRegion label, #testFix #inputGender label
        ,#testFix #inputInter input, #testFix #inputRegion input, #testFix #inputGender input {
        display : inline-block;
        }  */
         #inputInter label, #inputRegion label, #inputGender label
        , #inputInter input,#inputRegion input, #inputGender input {
        display : inline-block;
        }
        
    /*     #myPtCh #inputRegion{
        	display:inline - block;
        }  */
        
		
		
	
	
	</style>
</head>
<body id="myPtCh">
 <%@ include file="/WEB-INF/views/include/header.jsp" %> 

<br/><br/><br/><br/><br/><br/>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
			</div>
			
			<div class="col-md-8" >
	<form id="pointChargeForm" action="pointCharge" method="post">
<!-- ================충전 환전 탭======================================================================== -->
				<div class="row" id="tabBox">
					<div id="selectedTab1"class="col-md-1" onclick="location.href='pointChargeForm'">
						<p>충전하기</p>
					</div>
					<div id="selectedTab" class="col-md-1" onclick="location.href='pointExchangeForm'">
						<p>환전하기</p>
					</div>
				</div>
				<hr id="tabHr"/>
<!-- ================아이디======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>아이디</p>
					</div>
					<div class="col-md-3" id="centCol">
							<p>${loginId}</p>
			              	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<div class="col-md-7" id="centCol">
							<p> 보유 포인트 &nbsp;&nbsp; : &nbsp;&nbsp;  ${chargePoint}</p>
					</div>
				</div>
				<hr/>
				
<!-- ================계좌번호======================================================================== -->
				<div class="row">
					<div class="col-md-2" id="leftCol2">
						<p>충전 금액</p>
					</div>
					
					 <div class="col-md-10" style="display:inline-block; margin-top:20px;" >
					 <div class="form-group" id="inputRegion">
              			 <!-- <b>충전 금액</b>&nbsp;&nbsp; -->
                        <input type="radio" name="pt_count"   value="1000" id="exampleInputRegion1" checked="checked"/>
                        <!-- 1,000포인트 -->
                         <label for="exampleInputRegion1">
                            1,000원
                        </label>
                      <!--   <p>
                            1,000원
                        </p> -->
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pt_count" value="2000" id="exampleInputRegion2"/>
                        <!-- 2,000포인트 -->
                         <label for="exampleInputRegion2">
                            2,000원
                        </label> 
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pt_count"  value="3000" id="exampleInputRegion3" />
                       <!--  3,000포인트 -->
                         <label for="exampleInputRegion3">
                            3,000원
                        </label> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pt_count"  value="5000" id="exampleInputRegion4" />
                         <!-- 5,000포인트 -->
                        <label for="exampleInputRegion4">
                            5,000원
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br/>
                        <br/>
                        <input type="radio" name="pt_count"  value="10000" id="exampleInputRegion5" />
                        <!--  10,000포인트 -->
                         <label for="exampleInputRegion5">
                           10,000원
                        </label> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <input type="radio" name="pt_count"  value="20000" id="exampleInputRegion6" />
                         <!-- 20,000포인트 -->
                       <label for="exampleInputRegion6">
                        20,000원
                        </label> 
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pt_count"  value="30000" id="exampleInputRegion7" />
                        <!--  30,000포인트 -->
                         <label for="exampleInputRegion7">
                            30,000원
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pt_count"  value="50000" id="exampleInputRegion8" />
                        <!--  50,000포인트 -->
                         <label for="exampleInputRegion8">
                            50,000원
                        </label>
                    </div>
					</div>
				</div>

				<hr/>

				<!-- ================환전 금액======================================================================== -->		
				<div class="row">
					<div class="col-md-2" id="leftCol">
						<p>충전 포인트</p>
					</div>
					<div class="col-md-1">
					</div>
					<div class="col-md-6" id="radioResult">
						<p>1000 포인트</p> 
					</div>
				</div>
				<hr id="tabHr"/>

<!-- ================요청======================================================================== -->		
				<div class="row">
					<div class="col-md-2">
					</div>
					<div class="col-md-8" id="centerAlign">
						<input id="submitBtn" type="button" value="충전" onclick="pointSub()" class="flex-c-m stext-101 cl0 bg3 hov-btn3 p-lr-15 trans-04 pointer"/>
					</div>
					<div class="col-md-2">
					</div>
				</div>
		</form>
			</div>
			<div class="col-md-2">

			</div>
		</div>
	</div>
	
</body>
<script>
/* 		var yn  = confirm("해당 포인트를  충전하시겠습니까? "); */

 function pointSub(){
	
		if(confirm("해당 포인트를  충전하시겠습니까? ")){
			
			$('#pointChargeForm').submit(
					
			);

		}
	}
 
 
 $('input[name="pt_count"]').click(function () {
	var pt_count = $(this).val();
	$.ajax({
		type:'get',
		url:'pointRadio',
		data:{'pt_count':pt_count},	
		datatype:'JSON',
		success:function(data){
				
			var html = data.pt_count+' 포인트';

			$('#radioResult').html(html);
			console.log(data);
			
		},
		error:function(e){
			 console.log(e);
			 
			alert('실패')
		}
	});
});
 
</script>
</html>