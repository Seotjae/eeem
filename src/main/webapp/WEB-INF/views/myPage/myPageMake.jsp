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
		#tab3{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab1,#tab2,#tab4,#tab5,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageMake #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageMake #tabBox div:hover,#myPageMake #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageMake #tabBox{
			background-color: 89B8FF;
		}
		#myPageMake #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPageMake #myPageMakeContainer div{
			padding: 0px;
		}
		
		#myPageMake #selectedTab, #myPageMake #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPageMake #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPageMake #myTbody{
			text-align: center;
			font-size: 14px;
		}
		#myPageMake #buttonCenter, .pagination{
			justify-content: center;
		}
	</style>
</head>
<body id="myPageMake">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageMakeContainer">
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
					<div id="selectedTab" class="col-md-2" onclick="location.href='myPageMake'">
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
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-2">
						<p>내가 신청한 모임</p>
					</div>
					<div class="col-md-6">
					</div>
					<div class="col-md-4">
						<p>${loginId} 님의 개설자 평점 : ${MakeStar}</p>
					</div>
				</div>
				<hr/>

<!-- 테이블 바디 -->
				<div id="list">
					<div class="row" id="myTbody">
						<div class="col-md-2">
						<p>이미지</p>
						</div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-12">
								<p>모임제목</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
								<p>모임기간</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
								<p>모임지역</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
								<p>모집인원</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
						<p>모임상태,평가</p>
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
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

var currPage=1;
var totalPage =2;
MakeList(currPage,10);

function MakeList(page, cnt){
	
	$.ajax({
		type:'get',
		url:'MakeList',
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
	
function listDraw(list){
	console.log('페이지내용');
	var content ='';
	list.forEach(function(item){
		var date1 = new Date(item.meet_start);
		var date2 = new Date(item.meet_end);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2">'+item.meet_thum+'</div>';
		content += '<div class="col-md-4">';
		content += '<div class="col-md-12"><p align="left">'+'모임제목 : '+item.meet_subject+'</p></div>';
		content += '<br/>';
		content += '<div class="col-md-12"><p align="left">'+'모임기간 : '+date1.getFullYear()+"-"+("0"+(date1.getMonth()+1)).slice(-2)+"-"+("0" + date1.getDate()).slice(-2)
		+'~'+date2.getFullYear()+"-"+("0"+(date2.getMonth()+1)).slice(-2)+"-"+("0" + date2.getDate()).slice(-2)+'</p></div>';
		content += '<br/>';
		content += '<div class="col-md-12"><p align="left">'+'모임지역 : '+item.meet_region+'</p></div>';
		content += '<br/>';
		content += '<div class="col-md-12"><p align="left">'+'모임인원 : 승인인원/모집인원/ · '+'(승인된인원)'+'명 / '+item.meet_totalPrs+'명'+'</p></div>';
		content += '</div>';
		content += '<div class="col-md-3" style="display:flex;align-items: center;justify-content: center;"><p>'+'모임 상태 : '+item.meet_state+'</p></div>';
		content += '<div class="col-md-3">';
		content += '<div class="col-md-12">'+'<button onclick="">모임 완료하기</button>'+'</div>';
		content += '<br/>';
		content += '<div class="col-md-12">'+'<button onclick="">모임 폐쇄하기</button>'+'</div>';
		content += '</div>';
		content += '</div>';
		content += '<hr/>';	
	});
	//console.log(content);
	$("#list").empty();
	$("#list").append(content);
	}
}
</script>
</html>