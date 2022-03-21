<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- 부트 스트랩 css -->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 
	 <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	 
	 <!-- 부트스트랩 js -->
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	 
	 
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<!-- 이 링크가 무엇을 뜻하는지 나중에 다시 알아보기! -->
	<!-- 리소시즈를 불러오도록 해주는 거야. 밑에있는 이 링크는. -->
	<link rel="styleSheet" type="text/css" href="resources/css/common.css">
	<style>
	hr{
	margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #2e6da4;
	}
	
	</style>
</head>
<!-- <body style="background-color: 89B8FF;"> -->
<body>

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
		<div class="col-md-2">
		썸네일
		<c:forEach items="${thumFile}" var="thumbnail">
			<img src="resources/meetPhoto/${thumbnail.meet_thum}" width="250px" />
		</c:forEach>
			
			<h3>
				작성자 정보
			</h3>
			<p>
				작성자 아이디  ${MeetWriter.mem_id}
			</p>
 			<div>
				이름   ${MeetWriter.mem_name}
			</div>
			<div>
				전화번호  ${MeetWriter.mem_phone}
			</div>
			<div>
				email  ${MeetWriter.mem_email}
			</div>
			<div>
				평점   ${MeetWriter.grd_score}
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
				승인인원 / 모집인원 ${approve} / ${mDetail.meet_totalPrs}
			</h3>
			<h3>
				모임비 ${mDetail.meet_point}
			</h3>
			<h3>
				/ ${mpoint}
				<!-- <div>
					/
				</div> -->
			</h3> 
			<button id ="meetWchk" type="button" class="btn btn-success btn-sm">
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
			<div class="block2-txt-child2 flex-r p-t-3">
									<span class="btn-addwish-b2 dis-block pos-relative">
										<button onclick="like('${mDetail.meet_num}')">
										<img class="icon-heart1 dis-block trans-04 hreatbtn" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
										</button>
									</span>
								</div>
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
			 
				<a href="javascript:showPopUp()">신고하기</a>
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


<!-- 중간 탭 -->
	<div class="row">
		<div class="col-md-12">
			<div class="tabbable" id="tabs-770103">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link" href="#tab1" data-toggle="tab">상세보기</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active show" href="#tab2" data-toggle="tab">모임 문의</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-618047">
						<p>
							I'm in Section 1.
						</p>
					</div>
					<div class="tab-pane" id="tab2">
						<p>
							Howdy, I'm in Section 2.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
		<br/><br/><br/><br/><br/><br/>
	<!-- 중간 탭 -->
	<!-- ========================================상단 탭========================================= -->	
	<!-- 상세보기는 항상 -->
	
	
	
	<!-- 상세보기 -->
	
	
	<div class="row">
		<div class="col-md-12">
			<hr color="green" size="20px"/>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		모임 상세보기 - ${mDetail.meet_num}
		</div>
		<div class="col-md-8">
		<!--  모임 상세보기 본문 사진부분 -->
			<!-- <img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<br/><br/>
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
			<br/><br/>
			<img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" /> -->
			<c:forEach items="${photos}" var="photo">
			<img src="resources/meetPhoto/${photo.photo_newName}" />
			</c:forEach>
			<br/>	<br/>	<br/>	<br/>
			<p>
				문의 상세 정보 글 보기 - ${mDetail.meet_content}
			</p>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		</div>
		<div class="col-md-2">
		</div>
	</div>



</body>
<script>

 // 신청하기를 눌렀을 경우에 신청자의 포인트 확인.

		var myPoint = ${mpoint};
		console.log('내가 가지고 있는 포인트'+myPoint);
		var meetPoint = ${mDetail.meet_point};
		console.log('모임 포인트'+meetPoint);
		
  $('#meetWchk').on('click',function(){
	  console.log('여길 타기는 타니? ');
		if(myPoint < meetPoint){
			 
			 alert('포인트가 부족합니다. 포인트충전 후 이용해주세요');
	
		}else{ 
			 console.log('else');
			  alert("해당포인트가 차감 됩니다. 신청하시겠습니까?");
			 location.href = "./pointToss?meet_num=${mDetail.meet_num}";
		}
	});
  
  
  // 즐겨찾기
  function like(meet_num){
		var mem_id = '${sessionScope.mem_id}';
			
		$.ajax({
			type:'get',
			url:'meetBookmarkinsert',
			data:{'mem_id':mem_id, 'meet_num':meet_num},	
			datatype:'JSON',
			success:function(data){
				console.log(data);
				alert(data.msg);
			},
			error:function(e){
				 console.log(e);
				 
				alert('즐겨찾기 추가가 실패하였습니다. 잠시후 다시 시도해주세요.')
			}
		});
		
	}; 
	
  
  
	// 신고하기 팝업창

	function showPopUp() { 
		//창 크기 지정 
		var width = 500;
		var height = 500;
	//pc화면기준 가운데 정렬 
	var left = (window.screen.width / 2); /*  - (width/2);  */
	var top = (window.screen.height / 4);
	//윈도우 속성 지정 
	var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes'; 
	//연결하고싶은url 
	/* const url = "https://seeminglyjs.tistory.com/";  */
	const url = "./meetDeclarationForm?meet_num="+${mDetail.meet_num};
	//등록된 url 및 window 속성 기준으로 팝업창을 연다. 
	window.open(url, "", windowStatus); 
	}

			 



</script>
</html>