<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<meta charset="UTF-8">
	<title>EEEm</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
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
    
    <!-- =====페이징===================================================================================== -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  
	<script src="resources/paging/jquery.twbsPagination.js"></script>
	<!-- =====페이징===================================================================================== -->
    
    
	<style>
		#tab1{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;
		}
		#tab5{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab2,#tab3,#tab4,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageQnA #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageQnA #tabBox div:hover,#myPageQnA #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageQnA #tabBox{
			background-color: 89B8FF;
		}
		#myPageQnA #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPageQnA #myPageQnAContainer div{
			padding: 0px;
		}
		
		#myPageQnA #selectedTab, #myPageQnA #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPageQnA #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPageQnA #myTbody{
			text-align: center;
			font-size: 14px;

		}
		
		#myPageQnA #buttonCenter, .pagination{
			justify-content: center;
		}
		
		#singo{
		color: #89B8FF;
		}
		
		.manager{
		color: #ff9797;
		}

		.search1{
		border: 1px solid black;
		}
		
		.search2{
		    bottom: 410px;
		    right: 500px;
		    width: 150px;
		    height: 25px;
		}
		
		.search3{
		border: 1px solid black;
	    right: 286px;
	    bottom: 410px;
		}
		
		.search4{
		right: 270px;
		bottom: 410px;
		}
		

		

		


	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

	<div class="container-fluid" id="myPageQnAContainer">
		<!-- ========================================상단 탭========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<h1 class="manager">관리자 페이지</h1>
			</div>
		</div>
		<br/>
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='managerDeclaration'">
						<p>신고내역</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerSanctions'">
						<p>제재내역</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='location.href='managerMeetList'">
						<p>전체모임목록</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerAdvertisement'">
						<p>광고내역</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerQnA'">
						<p>문의목록</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerMemList'">
						<p>회원목록</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		<br/>
		<br/>

		</div>

		<!-- ========================================페이지 내용========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-8">
						<h3 id="singo">모임목록</h3>
					</div>
					
						<div class="col-md-2">
							<select name="meet_state" class="search2">
								<option value="5" selected="selected">전체</option>
								<option value="0">모집대기</option>
								<option value="1">모집중</option>
								<option value="2">폐쇄</option>
								<option value="3">모임중</option>
								<option value="4">모임완료</option>
							</select>
						</div>
						<div class="bor8 dis-flex p-l-15 col-md-2">
							<form id="reset_test_form4">
								<input class="search3" type="text" autocomplete="off"
								id="keyword" name="keyword" placeholder=" 검색" >
							</form>
							<a href="javascript:void(0);" onclick="" id="searchBtn" class="search4">
							<span class="zmdi zmdi-search"></span></a>
						</div>	
				</div>
				<hr/>				
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>모임제목(인원)</p>
					</div>
					<div class="col-md-2">
						<p>모임날짜</p>
					</div>
					<div class="col-md-2">
						<p>분야</p>
					</div>
					<div class="col-md-2">
						<p>지역</p>
					</div>
					<div class="col-md-2">
						<p>모임비</p>
					</div>
					<div class="col-md-2">
						<p>모임상태</p>
					</div>
				</div>
				<hr/>
					<!---------------- 테이블 바디 ---------------->
				<div id="list">
					<div class="row" id="myTbody">
						<div class="col-md-2">
							<p>모임제목(인원)</p>
						</div>
						<div class="col-md-2">
							<p>모임날짜</p>
						</div>
						<div class="col-md-2">
							<p>분야</p>
						</div>
						<div class="col-md-2">
							<p>지역</p>
						</div>
						<div class="col-md-2">
							<p>모임비</p>
						</div>
						<div class="col-md-2">
							<p>모임상태</p>
						</div>
					</div>
				</div>
				<hr/>
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	
</body>


<script>

var $meet_state = $('select[name="meet_state"] option:selected').val();
var $meet_subject = $('#keyword').val();
console.log($meet_state,'/',$meet_subject);

$('select[name="meet_state"]').change(function() {
	console.log('change');
	$meet_state = $('select[name="meet_state"] option:selected').val();
	$meet_subject = $('#keyword').val();
	managerMeetListCall(currPage,10);
});

$('#searchBtn').click(function() {
	console.log('click');
	$meet_state = $('select[name="meet_state"] option:selected').val();
	$meet_subject = $('#keyword').val();
	managerMeetListCall(currPage,10);
});
$('#keyword').keydown(function() {
	if (event.keyCode === 13) {
		$('#searchBtn').click();
		event.preventDefault();
	}
	console.log('down');
});



var currPage=1;
managerMeetListCall(currPage,10);

function managerMeetListCall(page,cnt) {
	
	$.ajax({
		type:'get',
		url:'managerMeetListCall',
		data:{'page':page,'cnt':cnt,'meet_state':$meet_state,'meet_subject':$meet_subject},
		dataType:'JSON',
		success : function(data) {
			
			var totalPage = data.pages;
			listDraw(data.list);
			console.log(totalPage);
			
			$('#pagination').twbsPagination({
				startPage: currPage,//현재 페이지
				totalPages: totalPage,//만들수 있는 총 페이지 수
				visiblePages:5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지
				onPageClick:function(evt,page){//해당 페이지 번호를 클릭했을때 일어날 일들
					//console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
					//console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
					managerMeetListCall(page, 10);
				}
			});
			
		},
		error: function(e) {
			console.log(e);
		}
	});
};

function listDraw(list){
	//console.log('페이지내용');
	var content = '';		
	
		list.forEach(function(item, idx){
		var meet_start = new Date(item.meet_start);
		var meet_end = new Date(item.meet_end);
		//console.log(meet_start,meet_end);
		meet_start = meet_start.toLocaleString().substring(0,11);
		meet_end = meet_end.toLocaleString().substring(0,11);
		//console.log(idx,item);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p><a href="meetDetail?meet_num='+item.meet_num+'" onclick="#">'+item.meet_subject+'</a></p></div>';
		content += '<div class="col-md-2"><p>'+meet_start+'<br/> ~ '+meet_end+'</p></div>';
		////////////////////선호 분야 Start////////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.meet_interest == 0){content += '교육 / 강연';}
		if(item.meet_interest == 1){content += '취미 / 소모임';}
		if(item.meet_interest == 2){content += '문화 / 예술/ 방송';}
		if(item.meet_interest == 3){content += '전시 / 박람회';}
		if(item.meet_interest == 4){content += '스포츠 / 게임';}
		if(item.meet_interest == 5){content += '패션 / 뷰티';}
		if(item.meet_interest == 6){content += '기타';}
		content += '</p></div>';
		////////////////////선호 분야 End////////////////////////

		////////////////////모임 지역 Start////////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.meet_region == 0){content += '서울';}
		if(item.meet_region == 1){content += '경기';}
		if(item.meet_region == 2){content += '충청';}
		if(item.meet_region == 3){content += '강원';}
		if(item.meet_region == 4){content += '전라';}
		if(item.meet_region == 5){content += '경상';}
		if(item.meet_region == 6){content += '제주';}
		if(item.meet_region == 7){content += '온라인';}
		content += '</p></div>';
		////////////////////모임 지역 End////////////////////////
		
		content += '<div class="col-md-2"><p>'
		if(item.meet_point == 0){content += '무료';}
		else{content += item.meet_point;};
		content += '</p></div>';
		
		////////////////////모임 상태 Start////////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.meet_state == 0){content += '모집대기';}
		if(item.meet_state == 1){content += '모집중';}
		if(item.meet_state == 2){content += '폐쇄';}
		if(item.meet_state == 3){content += '모임중';}
		if(item.meet_state == 4){content += '모임완료';}
		content += '</p></div>';
		

		
		content += '</div>';		
		content += '<hr/>';	
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);
}










</script>

</html>