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
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	
	
	<!-- =====페이징===================================================================================== -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  
	<script src="resources/paging/jquery.twbsPagination.js"></script>
	<!-- =====페이징===================================================================================== -->
		
	<style>
		#tab4{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab1,#tab2,#tab3,#tab5,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageJoin #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageJoin #tabBox div:hover,#myPageJoin #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageJoin #tabBox{
			background-color: 89B8FF;
		}
		#myPageJoin #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPageJoin #myPageJoinContainer div{
			padding: 0px;
		}
		
		#myPageJoin #selectedTab, #myPageJoin #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPageJoin #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPageJoin #myTbody{
			text-align: center;
			font-size: 14px;

		}
		
		#myPageMake #buttonCenter, .pagination{
			justify-content: center;
		}
		
		#myPageJoin .row button{
			font-size: 13px;
			width: 130px;
			height: 30px;
			margin:auto;
        	display:block;
		}
	</style>
</head>
<body id="myPageJoin">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageJoinContainer">
		<!-- ========================================상단 탭========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>회원정보 수정</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageLike'">
						<p>즐겨찾기</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>개설한 모임</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='myPageJoin'">
						<p>신청한 모임</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageQna'">
						<p>내가 작성한 문의</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPagePoint'">
						<p>포인트 내역</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		<!-- <button onclick="location.href='myPageMakeScore'">개설가 평가 페이지</button> -->
		<!-- ========================================페이지 내용========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-2">
						<p>내가 개설한 모임</p>
					</div>
					<div class="col-md-7">
					</div>
					<div class="col-md-3">
						<p>${loginId} 님의 참여자 평점 : <span id="grdAvg">평점</span></p>
					</div>
				</div>
				<hr/>

<!-- 테이블 바디 -->
				<div id="list">
					<div class="row" id="myTbody">
						<div class="col-md-3">
						<p>이미지</p>
						</div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-3">
									모임제목
								</div>
								<div class="col-md-9">
									제목내용
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									모임기간
								</div>
								<div class="col-md-9">
									기간 표시
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									모임지역
								</div>
								<div class="col-md-9">
									모임 서울
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									모임 인원
								</div>
								<div class="col-md-9">
									총인원 현재인원 승인인원
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="col-md-12">
								<p>모임상태</p>
							</div>
							<div class="col-md-12">
								<p>모임평가</p>
							</div>					
						</div>
						<div class="col-md-3">
							<div class="row">
								<div class="col-md-12">
								<p>모임 완료하기</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
								<p>모임 폐쇄하기</p>
								</div>
							</div>
						</div>
					</div>
				</div>			
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
<!-- ========================================페이징 버튼========================================= -->		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div id="paging">
		            <div class="container">                           
		               <nav aria-label="Page navigation" style="text-align:center">
		                  <ul class="pagination" id="pagination"></ul><br/>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	</div>			
</body>
<script>

var grdAvg = document.getElementById('grdAvg');
grdAvg.innerText = ('${joindto}').slice(0,3)+'점';

var currPage=1;
var totalPage =2;
MakeList(currPage,10);

function MakeList(page, cnt){
	
	$.ajax({
		type:'get',
		url:'appList',
		data:{'page':page,'cnt':cnt},
		dataType:'JSON',
		success: function(data){
			console.log(data);
			totalPage = data.pages;
			listDraw(data.list);
			
			$('#pagination').twbsPagination({
				startPage: currPage,//현재 페이지
				totalPages: totalPage,//만들수 있는 총 페이지 수
				visiblePages:5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지
				onPageClick:function(evt,page){//해당 페이지 번호를 클릭했을때 일어날 일들
					console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
					console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
					MakeList(page, 10);
				}
			});
		},
		error:function(e){
			console.log(e);
		}
	});
}

	function listDraw(list){
	console.log('페이지내용');
	var content ='';
	list.forEach(function(item){
		var date1 = new Date(item.meet_start);
		var date2 = new Date(item.meet_end);
		content += '<div class="row" id="myTbody">';	
		content += '<div class="col-md-3">';
		content += '<br/>';		
		content += '<a href="meetDetail?meet_num='+item.meet_num+'">';
		content += '<img src="resources/meetPhoto/'+item.meet_thum+'" width ="150px" height="150px"/>';	
		content += '</a>';
		content += '</div>';
		content += '<div class="col-md-4" onclick="movePage('+item.meet_num+')" style="cursor:pointer;">';
		content += '<br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">모임제목</p></div>';
		content += '<div class="col-md-9"><p align="left">'+item.meet_subject+'</p></div>';
		content += '</div><br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">모임기간</p></div>';
		content += '<div class="col-md-9"><p align="left">'+date1.getFullYear()+". "+("0"+(date1.getMonth()+1)).slice(-2)+". "+("0" + date1.getDate()).slice(-2)
		+' ~ '+date2.getFullYear()+". "+("0"+(date2.getMonth()+1)).slice(-2)+". "+("0" + date2.getDate()).slice(-2)+'</p></div>';
		content += '</div><br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">모임지역</p></div>';
		content += '<div class="col-md-9"><p align="left">';
		if (item.meet_region == 0) {content += '서울';}
		if (item.meet_region == 1) {content += '경기';}
		if (item.meet_region == 2) {content += '충청';}
		if (item.meet_region == 3) {content += '강원';}
		if (item.meet_region == 4) {content += '전라';}
		if (item.meet_region == 5) {content += '경상';}
		if (item.meet_region == 6) {content += '제주';}
		if (item.meet_region == 7) {content += '온라인';}
		content += '</p></div></div><br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">승인인원</p></div>';
		content += '<div class="col-md-2"><p align="left">'+item.app_stateOne+'명'+'</p></div>';
		content += '<div class="col-md-2"><p align="left">모집인원</p></div>';
		content += '<div class="col-md-2"><p align="left">'+item.meet_totalPrs+'명'+'</p></div></div></div>';
		content += '<div class="col-md-3">';
		content += '<div class="col-md-12"><br/><br/><br/><p>모임 상태 : ';
		if (item.meet_state == 0) {content += '모집대기';}
		if (item.meet_state == 1) {content += '모집중';}
		if (item.meet_state == 2) {content += '폐쇄';}
		if (item.meet_state == 3) {content += '모임중';}
		if (item.meet_state == 4) {content += '모임완료';}
		content += '</p></div>';
		content += '<div class="col-md-12"><br/><p>신청 상태 : ';
		if (item.app_state == 0) {content += '승인 대기중';}
		if (item.app_state == 1) {content += '승인';}
		if (item.app_state == 2) {content += '취소';}
		content += '</p></div></div>';
			
		
		content += '<div class="col-md-2">';
		content += '<br/><br/>';
		content += '<div class="col-md-12"><br/>'
		if (item.meet_state == 0 || item.meet_state == 1 || item.meet_state == 2) //모임상태가0,1,2,3 이면 완료불가
		{content +='<button id="btnState1" onclick="alert(\'모임 완료할 수 없는 상태입니다\')"class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">모임 완료하기</button>';}
		if (item.meet_state == 3 && item.app_confirm !== 1)
		{content +='<button id="btnState3" onclick="meetcompleted('+item.meet_num+')"class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">모임 완료</button>';}
		if (item.meet_state == 3 && item.app_confirm == 1)
		{content +='<button id="btnState3" onclick="alert(\'이미 모임을 완료하였습니다\')" style="color:gray;" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">모임 완료</button>';}
		content += '</div><br/>';
		content += '<div class="col-md-12">'
		if (item.meet_state == 0)
		{content +='<button onclick="meetStop('+item.meet_num+')" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">신청  취소</button>';}
		if (item.meet_state == 3 || item.meet_state == 4 || item.meet_state == 2 || item.meet_state == 1)	
		{content +='<button onclick="alert(\'모임 취소를 할 수 없는 상태입니다\')" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">모임 취소 신청</button>';}
		content += '</div></div>';
		content += '</div><br/><hr/>';
	});
	//console.log(content);
	$("#list").empty();
	$("#list").append(content);
	}

	function movePage(meet_num) {
		location.href = 'meetDetail?meet_num='+meet_num;	
	}
	
	function meetcompleted(meet_num) { //모임 완료요청 (신청한 회원)
		if (confirm("모임을 완료하시겠습니까?")) {
			location.href="completion?meet_num="+meet_num; 
		}
	}
	
	
	function meetStop(meet_num){ //모임 취소요청(신청한 회원)
		var mem_id = '${sessionScope.loginId}';
		console.log(meet_num,mem_id);
		
		if (confirm("모임을 취소하시겠습니까?")) {
			
			$.ajax({
				type:'get',
				url:'meetStop',
				data:{'meet_num':meet_num,'mem_id':mem_id},
				dataType:'JSON',
				success: function(data){
					console.log(data)
					alert(data.msg);
					$("#list").empty();
					$("#list").append(content);
				},error:function(e){
					console.log(e)
					alert('시스템 이상으로 모임취소 신청이 완료되지 않았습니다.확인후 다시 이용해 주세요');
				} //완료후 재확인 필요 3월20일 이충구---------------------------------------------------------------------
			});
		}
	}
	


</script>

</html>