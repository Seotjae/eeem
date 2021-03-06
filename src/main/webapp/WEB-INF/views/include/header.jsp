<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<title>Insert title here</title>
<!-- <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/MagnificPopup/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/eeem.css">



<style>
.meetcreat {
	font-size: 7px;
}
.limiter-menu-desktop container{
	background : ffffff;
}

</style>
</head>
<body>

	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar"></div>

					<div class="right-top-bar flex-w h-full" id="headerTabBar">
						<c:if test="${sessionScope.loginId ne null}">
							<!-- ????????? loginId ??? null??? ?????? ?????? -->
							<a href="pointChargeForm" class="flex-c-m trans-04 p-lr-25">???????????????</a>
							<a href="logout" class="flex-c-m trans-04 p-lr-25">????????????</a>
						</c:if>
						<c:if test="${sessionScope.loginId eq null}">
							<!-- ????????? loginId ??? null???  ?????? -->
							<a href="login" class="flex-c-m trans-04 p-lr-25">?????????</a>
							<a href="registForm" class="flex-c-m trans-04 p-lr-25">????????????</a>
						</c:if>
					</div>

				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="./" class="logo"><img
						src="resources/images/icons/logo-01.png" alt="IMG-LOGO"
						width="100" height="50">
					</a>
					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu meetcreat">
							<li><a href="meetList">??????</a></li>
							<li><a href="meetList?meet_interest=0">??????/??????</a></li>
							<li><a href="meetList?meet_interest=1">??????/?????????</a></li>
							<li><a href="meetList?meet_interest=2">??????/??????/??????</a></li>
							<li><a href="meetList?meet_interest=3">??????/?????????</a></li>
							<li><a href="meetList?meet_interest=4">?????????/??????</a></li>
							<li><a href="meetList?meet_interest=5">??????/??????</a></li>
							<li><a href="meetList?meet_interest=6">?????? ??????</a></li>
						</ul>
					</div>

					
					<c:if test="${sessionScope.loginId ne null}">
						<!-- Icon header -->
						<div class="wrap-icon-header flex-w flex-r-m">
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
								<i class="zmdi meetcreat"><a href="meetRegistForm">????????????<img
										src="resources/images/ins2.png" alt="meetmaking" width="25"
										height="25"></a></i>
							</div>
	
							<div
								class="icon-header-item hov-cl1 trans-04 p-l-22 p-r-11 js-show-cart">
								<a href="myPageUpdate"><img src="resources/images/ins1.png"
									alt="mypage" width="25" height="25"></a>
							</div>
	
							<!-- Small button group -->
							<div id="notiBtn" class="btn-group icon-header-noti" data-notify="">
									 <img
									src="resources/images/ins3.png" alt="Alarm" width="25"
									height="25">
							</div>
							<ol class="dropdown-menu" role="menu" id="notiselect">
							
							</ol>

						</div>
					</c:if>
				</nav>
			</div>
		</div>
	</header>

<!--===============================================================================================-->
   <script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/bootstrap/js/popper.js"></script>
   <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="resources/vendor/select2/select2.min.js"></script>
   <script>

   </script>



<script src="resources/js/main.js"></script>
<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>


</body>
<script>


var loginId = '${sessionScope.loginId}';
console.log(loginId);
if (loginId !='') {

	test();
	adminChk();
}

function adminChk() {
	$.ajax({
		type : 'POST',
		url : 'adminChk', //manager????????????
		data : {'loginId' : loginId},
		datatype : 'JSON',
		success : function(data) {
			console.log(data.loginId_mem_state);
			if (data.loginId_mem_state == 1) {
				$('#headerTabBar').prepend('<a href="managerDeclaration" class="flex-c-m trans-04 p-lr-25">?????????</a>');
			}else{
				$('#headerTabBar').prepend('<a href="queWriteForm" class="flex-c-m trans-04 p-lr-25">????????????</a>');
			}
		},
		error : function(e) {
			console.log(e)
		}
	});
}
 //???????????? ????????????
	function test() {
		console.log('header????????????');
		
		$.ajax({
			type : 'get',
			url : 'notice_call', //member????????????
			data : {'loginId' : loginId},
			datatype : 'JSON',
			success : function(data) {
                $('#notiBtn').attr('data-notify',data.notice.length);
				notilist(data.notice);
			},
			error : function(e) {
				console.log(e)
			}
		});
	};
	function notilist(notice){
		var notiarr = '';
		
		notice.forEach(function(noti){
			notiarr += '<input type="hidden" value="'+noti.nts_num+'"/>'; //?????????
			notiarr += '<li class="subject" style="'
			if (noti.nts_confirm == 0) {notiarr += 'opacity: 1.0;';}
			if (noti.nts_confirm == 1) {notiarr += 'opacity: 0.3;';}
			notiarr += '"><div>'+noti.nts_date+'</div><br/>';
			notiarr += '<div class="con"><button onclick="notiesclick('+noti.nts_num+')">';
			if (noti.nts_content == 0) {notiarr += '??????????????? ?????????????????????.';}
			if (noti.nts_content == 1) {notiarr += '?????????????????? ??????????????? ?????????????????????.';}
			if (noti.nts_content == 2) {notiarr += '??????????????? ????????????.';}
			if (noti.nts_content == 3) {notiarr += '????????? ????????? ?????????????????????.';}
			if (noti.nts_content == 4) {notiarr += '???????????? ?????????????????????.';}
			if (noti.nts_content == 5) {notiarr += '???????????? ?????????????????????.';}
			if (noti.nts_content == 6) {notiarr += '????????? ???????????? 10??????????????? ?????????????????????.';}
			if (noti.nts_content == 7) {notiarr += '???????????? ?????????????????????. ????????????????????? ??????????????????.';}
			if (noti.nts_content == 8) {notiarr += '????????? ????????? ??????????????? ???????????????.';}//?????? ??????(????????????0,????????????1,??????2,??????3,??????4,?????????5,?????????6,??????7,??????8)
			notiarr +='</button></div><button onclick="notiesdel('+noti.nts_num+')">??????</button>'; 
			notiarr += '</li><hr/>'; //???????????? (?????????0,??????1,??????2)
		});
	$('#notiselect').empty();
	$('#notiselect').append(notiarr);
	}
	
	//??????????????? on/off
	$('#notiBtn').click(function(){
		var $notiL = $('#notiselect');
		if($(this).hasClass('on')){
			$(this).removeClass('on');
			$notiL.hide();
		}else{
			$(this).addClass('on');
			$notiL.show();
		}
	});
	
	function notiesclick(nts_num){
		$.ajax({
			type:'get',
			url:'notiesclick',
			data:{'nts_num':nts_num},
			datatype:'JSON',
			success:function(data) {
				console.log(data);
				test();
			},error:function(e){
				console.log(e)
			}
		})
	}
	
	function notiesdel(nts_num){
		$.ajax({
			type:'get',
			url:'notiesdel',
			data:{'nts_num':nts_num},
			datatype:'JSON',
			success:function(data) {
				console.log(data);
				test();
			},error:function(e){
				console.log(e)
			}
		})
		
	}
	
	
	
</script>
</html>