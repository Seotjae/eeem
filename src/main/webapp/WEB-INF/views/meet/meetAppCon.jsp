<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>모임신청자 관리</title>
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
		#meetAppCon #meetAppContainer div{
			padding: 0px;
		}
	
		#meetAppCon #myThead{
			background-color: 89B8FF;
		}
		#meetAppCon #myThead div{
			height: 40px;
			display:flex;
			align-items: center;
			justify-content: center;
		}
		
		#meetAppCon #myThead p{
			text-align: center;
			color: white;
			font-weight: 600;
			font-size: 15px;
		}
		
		#meetAppCon #myTbody div{
			height: 30px;
			display:flex;
			align-items: center;
			justify-content: center;
		}
		#meetAppCon #myTbody p{
			text-align: center;
			font-size: 13px;
		}
		
		#selectDiv{
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
		
		#selectDiv select{
			height:30px;
			font-size: 14px;
		}
		
		
		/* 페이징 버튼 색 */
		#meetAppCon .how-pagination1{
			width:auto;
			min-width:36px;
			background-color: #222;
			border-color: #222;
		}
		
		/* 페이징 버튼 가운데 정렬 */
		#meetAppCon #buttonCenter, .pagination{
			justify-content: center;
		}
		
		
		/* 대기중 승인중 버튼 스타일 */
		#waitApp{
			cursor:pointer;
			background-color: white;
			border: 1px solid #222;
			border-radius:5px;
			width:50px;
			height: 30px;
		}
		#confApp{
			color:white;
			font-weight:600;
			background-color: 89B8FF;
			border: 1px solid 89B8FF;
			border-radius:5px;
			width:50px;
			height: 30px;
		}
		
	
	</style>

</head>
<body id="meetAppCon">

<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>
	
<!-- ==========================모임 상세보기 윗부분 ========================================================= -->
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				모임 상세보기 ${mDetail.meet_num}
			</h3>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
		<hr align="center" color="red" style="width:70%;"/>
	
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			<h3>
				<%-- 기타 ${mDetail.meet_interest} --%>
				<c:choose>
            <c:when test="${mDetail.meet_interest eq 0 }">
              교육/강연
            </c:when>
            <c:when test="${mDetail.meet_interest eq 1 }">
               취미/소모임
            </c:when>
            <c:when test="${mDetail.meet_interest eq 2 }">
               문화/예술/방송
            </c:when>
            <c:when test="${mDetail.meet_interest eq 3 }">
               전시/박람회
            </c:when>
              <c:when test="${mDetail.meet_interest eq 4 }">
               스포츠/게임
            </c:when>
            <c:when test="${mDetail.meet_interest eq 5 }">
               패션/뷰티
            </c:when>
            <c:when test="${mDetail.meet_interest eq 6 }">
               기타
            </c:when>
            </c:choose>
             /
            <%--  서울 ${mDetail.meet_region} --%>
              <c:choose>
            <c:when test="${mDetail.meet_region eq 0 }">
               서울
            </c:when>
            <c:when test="${mDetail.meet_region eq 1 }">
               경기
            </c:when>
            <c:when test="${mDetail.meet_region eq 2 }">
               충청
            </c:when>
            <c:when test="${mDetail.meet_region eq 3 }">
               강원
            </c:when>
            <c:when test="${mDetail.meet_region eq 4 }">
               전라
            </c:when>
            <c:when test="${mDetail.meet_region eq 5 }">
               경상
            </c:when>
            <c:when test="${mDetail.meet_region eq 6 }">
               제주
            </c:when>
            <c:when test="${mDetail.meet_region eq 7 }">
               온라인
            </c:when>
            </c:choose>
			</h3>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-1">
		썸네일
		<c:forEach items="${thumFile}" var="thumbnail">
			<!-- <img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /> 바꾸기 전 -->
			<%-- <img alt="Bootstrap Image Preview" src="resources/thumbnail/${thumbnail.photo_newName}" width="250px" />  파일 이름을 포토디티오에서 가져온 것--%>
			<img src="resources/meetPhoto/${thumbnail.meet_thum}" width="250px" />
		</c:forEach>
		</div>
		
		<div class="col-md-1">
			<h3>
				작성자 정보
			</h3>
			<p>
				작성자 아이디  ${mDetail.mem_id}
			</p>
 			<div>
				이름   ${mem_name}
			</div>
			<div>
				전화번호  ${mem_phone}
			</div>
			<div>
				email  ${mem_email}
			</div>
			<div>
				평점   ${grd_targetType}
			</div>
			
		</div>
		<div class="col-md-2">
			<h6>
				모임제목   ${mDetail.meet_subject}
			</h6>
			<h6>
				모집기간 ${mDetail.meet_gatherStart}~${mDetail.meet_gatherEnd}
			</h6>
			<h6>
				모임기간  ${mDetail.meet_start}~${mDetail.meet_end}
			</h6>
		</div>
		<div class="col-md-2">
		<h3>
				승인인원 / 모집인원 ${app_state} / ${mDetail.meet_totalPrs}
			</h3>
			<h3>
				모임비 ${mDetail.meet_point}
			</h3>
			<h3>
				/
				<!-- <div>
					/
				</div> -->
			</h3> 
			<button type="button" class="btn btn-success btn-sm">
				신청하기
			</button>
		</div>
		<div class="col-md-2">
			<p>
				/
			</p>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			<div>
				/
			</div>
			
			 
			<button type="button" class="btn btn-sm btn-outline-success">
				즐겨찾기
			</button>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
			 
			<button type="button" class="btn btn-danger">
				신고하기
			</button>
		</div>
	</div>
	
	<hr align="center" color="red" style="width:70%;"/>
	
	
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
</div>
	
	
<!-- ==========================모임 상세보기 아랫부분 ========================================================= -->
	<div class="container-fluid" id="meetAppContainer">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-7">
			</div>
			<div class="col-md-1" id="selectDiv">
				<select id="serchAppState">
					<option value="3" selected="selected">전체 (10)</option>
					<option value="1">승인 (4)</option>
					<option value="0">대기중 (6)</option>
				</select>
			</div>
		</div>
		<br/>
		<!-- ==========================신청자 테이블 헤드 ========================================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>NO</p>
					</div>
					<div class="col-md-2">
						<p>이름 (ID)</p>
					</div>
					<div class="col-md-2">
						<p>전화번호</p>
					</div>
					<div class="col-md-2">
						<p>생년월일</p>
					</div>
					<div class="col-md-2">
						<p>평점</p>
					</div>
					<div class="col-md-2">
						<p>신청상태</p>
					</div>
				</div>
				<br/>
			
<!-- ==========================신청자 테이블 바디 ========================================================= -->
				<div id="meetAppConList">
					<div class="row" id="myTbody">
						<div class="col-md-2" id="myTbodyWriter">
						</div>
						
						<div class="col-md-8" style="height: 100px; display: flex; justify-content: center; align-items: center;">
							<span style="font-size: 18px; color: lightgray; font-weight: 600;">모임 신청자가 존재하지 않습니다.</span>
						</div>
						
						<div class="col-md-2" id="myTbodyButton">
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
	
		
</div>
	

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	
</body>
<script>
var meet_num = ${meet_num};

//페이지 로딩 시 셀렉트 박스 와 모임 번호
var sltState = $('#serchAppState').val();
//console.log(sltState,meet_num);

//셀렉트 박스 선택시
$('#serchAppState').change(function() {
	sltState = $('#serchAppState').val();
	//console.log(sltState);
	
	meetAppsCall(currPage,10);//리스트 호출
});


/*==============페이징 =========================================================*/
var currPage=1;
meetAppsCall(currPage,10); //현재 페이지, 페이지당 보여줄 수

function meetAppsCall(page,cnt) {
	
	$.ajax({
		type:'POST',
		url:'meetAppsCall',
		data:{'page':page,'cnt':cnt,'sltState':sltState,'meet_num':meet_num},
		dataType:'JSON',
		success : function(data) {
			
			/* 신청자 인원수 확인  */
			var $optBox = $('#serchAppState').children();
			$optBox.eq(0).html('전체 ('+data.counts[0]+')');
			$optBox.eq(1).html('승인 ('+data.counts[1]+')');
			$optBox.eq(2).html('대기중 ('+data.counts[2]+')');
			
			
			/* 페이징 */
			totalPage = data.pages;
			if (totalPage>0) { //만들페이지가 있으면
				meetAppConListDraw(data.list);
				$('#pagination').twbsPagination({
					startPage: currPage,//현재 페이지
					totalPages: totalPage,//만들수 있는 총 페이지 수
					visiblePages:5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지	
					onPageClick:function(evt,page){//해당 페이지 번호를 클릭했을때 일어날 일들
						//console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
						//console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
						meetAppsCall(page, 10);
					}
				});
			}
			
			
		},
		error: function(e) {
			console.log(e);
		}
	});
}

function meetAppConListDraw(list){
	var content = '';		
	list.forEach(function(item, idx){
		
		var app_birth = new Date(item.app_birth);
		app_birth = app_birth.toLocaleString().substring(0,12);
		
		//console.log(idx,item);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p>'+item.app_num+'</p></div>'; //신청자 번호
		
		content += '<div class="col-md-2"><p>'+item.app_name+'</p>&nbsp<p>('+item.app_id+')</p></div>'; //신청자 이름 (아이디)
		
		content += '<div class="col-md-2"><p>'+item.app_phone+'</p></div>'; //신청자 전화번호
		
		content += '<div class="col-md-2"><p>'+app_birth+'</p></div>'; //신청자 생년월일
		
		content += '<div class="col-md-2"><p>'; //신청자 신청자 평점
			if (item.grd_avg == null || item.grd_avg == '') {content += ' - ';} //평점 없을 때
			else{content += item.grd_avg;} //평점 있을 때
		content += '</p></div>';
		
		content += '<div class="col-md-2"><p>'; //대기중 or 승인
			if (item.app_state ==0) {content += '<input id="waitApp" type="button" value="대기중" onclick="updAppSt('+item.app_num+',\''+item.app_id+'\')">';}
			else{content += '<input id="confApp" type="button" value="승인됨">';}
		content += '</p></div>';	
			
		content += '</div>';
		content += '<hr/>';	
	});
	//console.log(content);
	$('#meetAppConList').empty();
	$('#meetAppConList').append(content);
	
	//페이징 버튼 문구랑 css
	$('.page-link').eq(1).html('Prev')
	$('.page-link').removeClass('page-link').addClass( 'flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1' );
	
	

	
	
}

/* 대기중 클릭 시 함수 */
function updAppSt(app_num,app_id) {
	var result = confirm('신청은 취소할 수 없습니다. 승인하시겠습니까?');
	if (result) {
		$.ajax({
			type:'get',
			url:'updAppSt',
			data:{'app_num':app_num,'meet_num':meet_num,'app_id':app_id},
			dataType:'JSON',
			success : function(data) {
				console.log(data);
				if (data.result >0) {
					//alert('신청이 승인되었습니다.');
				}else{
					alert('신청이 승인되지 않았습니다.');
				}
				meetAppsCall(currPage,10);
			},
			error: function(e) {
				console.log(e);
			}
		});
	}
}


</script>
</html>

