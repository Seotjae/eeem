<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
			/* text-align: center; */
			font-size: 14px;

		}
		#myPageQnA #myTbody img{
			max-width: 150px;
			max-height: 200px;
		}
		#myPageQnA #buttonCenter, .pagination{
			justify-content: center;
		}
		
		#pntrChg{
			cursor: pointer;
		}
		#myPageQnA .how-pagination1{
			width:auto;
			min-width:36px;
		}
		
		#cancleBtn{
			font-size: 13px;
			width: 110px;
			height: 30px;
		}


	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

<!-- ========================================전체 틀========================================= -->
	<div class="container-fluid" id="myPageQnAContainer">
	
<!-- ========================================상단 탭========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>회원정보 수정</p>
					</div>
					<div id="selectedTab"  class="col-md-2" onclick="location.href='myPageLike'">
						<p>즐겨찾기</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>개설한 모임</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageJoin'">
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
		
<!-- ========================================페이지 내용========================================= -->
<!-- 테이블 헤드 -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-12">
						<p>즐겨찾기 목록</p>
						<hr/>
					</div>
				</div>
				
				
<!-- 테이블 바디 -->
				<div id="list">
					<div class="row" id="myTbody">
					
						<div class="col-md-3">
							<img src="resources/meetPhoto/202203111523.jpg"/>
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
							모임상태
						</div>
						<div class="col-md-3">
							<div class="row">
								<div class="col-md-12">
									즐겨찾기 취소
								</div>
							</div>
						</div>						
					
					</div>
					<hr/>
					
					
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>


		
	</div>

</body>
<script>
likeListCall();
function likeListCall() {
	$.ajax({
		type:'get',
		url:'likeListCall',
		data:{},
		dataType:'JSON',
		success : function(data) {
			console.log(data);
			listDraw(data.list);
		},
		error: function(e) {
			console.log(e);
		}
		
	});	
}

function listDraw(list){
	var content = '';
	
	list.forEach(function(item, idx){
		var meet_start = new Date(item.meet_start);
		var meet_end = new Date(item.meet_end);
		meet_start = meet_start.toLocaleString().substring(0,11);
		meet_end = meet_end.toLocaleString().substring(0,11);
		console.log(meet_start,"/",meet_end);
		content += '<div class="row" id="myTbody">';
		
			content += '<div class="col-md-3" onclick="movePage('+item.meet_num+')" style="display:flex;align-items: center;justify-content: center; cursor:pointer;">';
				content += '<img src="resources/meetPhoto/'+item.meet_thum+'"/>';
			content += '</div>';
			
			content += '<div class="col-md-4" onclick="movePage('+item.meet_num+')" style="cursor:pointer;">';
				content += '<br/>'
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>모임 제목</p>';
					content += '</div>';
					content += '<div class="col-md-9">';
						content += '<p>'+item.meet_subject+'</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
				
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>모임 기간</p>';
					content += '</div>';
					content += '<div class="col-md-9">';
						content += '<p>'+meet_start+' ~ '+meet_end+'</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
				
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>모임 지역</p>';
					content += '</div>';
					content += '<div class="col-md-9">';
						content += '<p>';
						switch (item.meet_region){
							case 0: content +='서울';
							break;
							case 1:	content +='경기';
							break;
							case 2:	content +='충청';
							break;
							case 3:	content +='강원';
							break;
							case 4:	content +='전라';
							break;
							case 5:	content +='경상';
							break;
							case 6:	content +='제주';
							break;
							case 7:	content +='온라인';
							break;
						}
						content += '</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
				
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>승인인원</p>';
					content += '</div>';
					content += '<div class="col-md-2">';
						content += '<p>'+item.app_prs+' 명</p>';
					content += '</div>';
					
					content += '<div class="col-md-2">';
						content += '<p>모집인원</p>';
					content += '</div>';
					content += '<div class="col-md-2">';
						content += '<p>'+item.meet_totalPrs+' 명</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
			content += '</div>';
			
			content += '<div class="col-md-3" style="display:flex;align-items: center;justify-content: center;">';
			content += '<p>모임 상태 : ';
			switch (item.meet_state){
				case 0: content +='모집대기';
				break;
				case 1:	content +='모집중';
				break;
				case 2:	content +='폐쇄';
				break;
				case 3:	content +='모임중';
				break;
				case 4:	content +='모임완료';
				break;
			}
			content += '</p>';
			content += '</div>';
			
			content += '<div class="col-md-2" style="display:flex;align-items: center;justify-content: center;">';
				content += '<div class="row">';
					content += '<div class="col-md-12">';
						content += '<input type="button" onclick="delBmk('+item.meet_num+',\''+item.bmk_loginId+'\')" value="즐겨찾기 취소" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" id="cancleBtn"/>';
					content += '</div>';
				content += '</div>';
			content += '</div>'
		
			
		content += '</div>';
		content += '<hr/>';
		
		
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);
}

function movePage(meet_num) {
	location.href='meetDetail?meet_num'+meet_num;
}


function delBmk(meet_num,mem_id) {
	$.ajax({
		type:'get',
		url:'bookmarkinsert',
		data:{'meet_num':meet_num,'mem_id':mem_id.toString()},
		dataType:'JSON',
		success : function(data) {
			console.log(data);
			likeListCall();
		},
		error: function(e) {
			console.log(e);
		}
	});
	
}

</script>

</html>