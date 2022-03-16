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
					<div class="col-md-2" onclick="location.href='myPageLike'">
						<p>즐겨찾기</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>개설한 모임</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageJoin'">
						<p>신청한 모임</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='myPageQna'">
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
						<p>내가 작성한 문의</p>
						<hr/>
					</div>
				</div>
				<div class="row" id="myThead">
					<div class="col-md-1">
						<p>번호</p>
					</div>
					<div class="col-md-2">
						<p>문의타입</p>
					</div>
					<div class="col-md-3">
						<p>제목</p>
					</div>
					<div class="col-md-3">
						<p>문의내용</p>
					</div>
					<div class="col-md-2">
						<p>처리자</p>
					</div>
					<div class="col-md-1">
						<p>처리상태</p>
					</div>
				</div>
				<hr/>
				
<!-- 테이블 바디 -->
				<div id="list">
					<div class="row" id="myTbody">
						<div class="col-md-1">
							<p>번호</p>
						</div>
						<div class="col-md-2">
							<p>문의타입</p>
						</div>
						<div class="col-md-3">
							<p>제목</p>
						</div>
						<div class="col-md-3">
							<p>문의내용</p>
						</div>
						<div class="col-md-2">
							<p>처리자</p>
						</div>
						<div class="col-md-1">
							<p>처리상태</p>
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
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="flex-l-m flex-w w-full p-t-10 m-lr--7" id="buttonCenter">
					<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
						1
					</a>

					<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
						2
					</a>
				</div>
			</div>
		</div>
	</div>

</body>
<script>
var currPage=1;
qnaListCall(currPage,10); //현재 페이지, 페이지당 보여줄 수

//$('.page-link').
//flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1

function qnaListCall(page,cnt) {
	
	$.ajax({
		type:'get',
		url:'qnaListCall',
		data:{'page':page,'cnt':cnt},
		dataType:'JSON',
		success : function(data) {
			
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
					qnaListCall(page, 10);
				}
			});
			
		},
		error: function(e) {
			console.log(e);
		}
	});
}



function listDraw(list){
	console.log('페이지내용');
	var content = '';		
	list.forEach(function(item, idx){
		//console.log(idx,item);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-1"><p>'+item.que_num+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.que_category+'</p></div>';
		content += '<div class="col-md-3"><p>'+item.que_subject+'</p></div>';
		content += '<div class="col-md-3"><p>'+item.que_content+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.que_admin+'</p></div>';
		content += '<div class="col-md-1"><p>'+item.que_state+'</p></div>';
		content += '</div>';
		content += '<hr/>';	
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);	
	
}

</script>

</html>