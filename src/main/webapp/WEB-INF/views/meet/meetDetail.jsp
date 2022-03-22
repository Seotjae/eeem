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
	
			.pop1{
		position: absolute;
		border: 1px solid #89B8FF;
	    width: 510px;
	    height: 450px;
	  	z-index: 10;
	    display:none;
	    left:500px;
	    top:500px;
	    background-color: #ff9797;
		} 
		
		
		/* 문의 상세보기 가려놓음 */
		#tab1{
		display:none;
		
		}
		
			/* 문의 상세보기 가려놓음 */
		#meetContent{
		
		display:none;
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
				<br/>
			</p>
			<div>
				<br/>
			</div>
			<div>
				<br/>
			</div>
			<div>
				<br/>
			</div>
			<div>
				<br/>
			</div>
			<div>
				<br/>
			</div>
			<div>
				<br/>
			</div>
			<div>
				<br/>
			</div>
			<div>
				<br/>
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
						
			<button id ="meetDeclaration" type="button" class="btn btn-success btn-sm">
				신고하기 
			</button>
				<!-- <a href="javascript:showPopUp()">신고하기</a> -->
		</div>
	</div>
	
		<!---------------------==================== 팝업 ===================----------------- -->
		<form action="meetSct_regist" method="post">
		
			<div class="pop1">
		<div class="container-fluid">
    <div class="row">
    <div class="col-md-2">
    </div>
        <div class="col-md-8">
            <h2 class="h44">신고하기</h2>
        </div>
         <div class="col-md-2">
    </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-2">
            <p>신고대상(개설자의 아이디)</p>
        </div>
        <br/>
        <div class="col-md-10">

            <input type="text" id="dec_targetId" name="dec_targetId" value="${MeetWriter.mem_id}" class="form-control" readonly/>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-2">
            <p>대상 모임 제목(/번호)</p>
        </div>
        <br/>
        <div class="col-md-10">
            <input type="text" name="meet_num" id="meet_num" value="${mDetail.meet_num}" class="form-control" readonly/>
        	<input type="hidden" name="dec_type" value="0"/>
        	<input type="hidden" name="dec_targetNum" value="${mDetail.meet_num}"/>
        </div>
    </div>
     <div class="row">
        <div class="col-md-2">
            <p>신고내용</p>
        </div>
        <br/>
        <div class="col-md-10">
            <input type="text" id="dec_content" name="dec_content" placeholder="내용" class="form-control"/>
        </div>
    </div>
    <br/>
    <br/>
    <div class="row">
        <div class="col-md-12 del2">
            <input type="submit" value="확인" class="del1"/>
            <input type="button" id="del1" value="취소"/>
        </div>
    </div>
</div>
</div>
		</form>
			<!---------------------==================== 팝업 ===================----------------- -->
	
	
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


<div class="container-fluid" id="meetTab">
<!-- 중간 탭 -->
	 <div class="row">
	 <div class="col-md-2">
	 </div>
		<div class="col-md-8">
			<div class="tabbable" id="tabs-770103">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link" href="#tab1" data-toggle="tab">상세보기</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active show" href="#tab2" data-toggle="tab">모임 문의</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active show" href="#tab3" data-toggle="tab">모임 후기</a>
					</li>
				</ul>
				
				<!-- 탭 선택 영역 -->
				<div class="tab-content">
					
					<!-- 상세보기 -->
					<!-- 아래 주석은 모임 상세보기 막아둔 것. tab-pane active시 항상 보이게 -->
					<!-- <div class="tab-pane active" id="panel-618047" id="tab1"> -->
					<div class="tab-pane" id="panel-618047" id="tab1">
						<p></p>
							<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		모임 상세보기 - ${mDetail.meet_num}
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
</div>
						<!-- 상세보기 -->
						
						
					<!-- 모임 문의  탭 클릭할때 들어갈 곳-->
					<div class="tab-pane" id="tab2">
						<p>
							d야아아아 모임 문의 들어가는 곳
						</p>
					</div>
					
					
					
					<!-- 모임 후기 탭 클릭할 때 들어갈 곳  -->
					<div class="tab-pane" id="tab3">
						<p>
							d야아아아 모임 후기 들어가는 곳
						</p>
					</div>
				</div>
				<!-- 위에 div 탭 선택 영역 -->
				
				
			</div>
		</div>
	</div> 
	
	
	 <div class="col-md-2">
	 </div>
		<br/><br/><br/><br/><br/><br/>
	</div>
	
	<!-- 중간 탭 -->
	<!-- ========================================상단 탭========================================= -->	
	
	
	<!-- 상세보기, 모임 문의, 모임 후기 -->
	
	
		<hr align="center" color="red" style="width:70%;"/>
		
		
		
		<!-- ========================================상세보기========================================= -->	
	<!-- 상세보기 -->
	
	<div class="container-fluid" id="meetContent">
	<div class="row">
<!-- 		<div class="col-md-12">
		</div> -->
	</div>
	<div class="row">
		<div class="col-md-2">
		<h5>
		모임 상세보기 부분!
		</h5>
		</div>
		<div class="col-md-8">
		모임 상세보기 - ${mDetail.meet_num}
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
</div>
	<!-- ========================================상세보기========================================= -->	
	<!-- ========================================모임문의========================================= -->	
	
<!-- ==========================모임 상세보기 아랫부분 ========================================================= -->
	<div class="container-fluid" id="meetReviewContainer">
	
		<!-- ==========================후기 작성폼 ========================================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<form id="meetCommentForm" action="meetCommentWrite" method="post">
					<div class="row" id="myThead">
						<div class="col-md-2" id="myTheadWriter">
							<p>${loginId}</p>
							<input type="hidden" name="meet_num" value="${mDetail.meet_num}"/>
						</div>
						<div class="col-md-8" id="myTheadInput">
		                <!-- 	<input type="text" name="rev_subject" placeholder="후기 제목을 입력하세요 (최대 80자)" class="form-control" maxlength="80" style="margin-bottom: 10px;"/> -->
	
							<textarea name="cmt_content" class="form-control" placeholder="문의 내용을 입력하세요" id="exampleInput"></textarea>
	
						</div>
						<div class="col-md-2" id="myTheadSubmit">
							<input type="button" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" id="meetCommentBtn" value="등록"/>
						</div>
					</div>
				</form>
				<hr/>
			
<!-- ==========================후기 보여주는 곳 ========================================================= -->
				<div id="list">
					<div class="row" id="myTbody">
						<div class="col-md-2" id="myTbodyWriter">
						</div>
						
						<div class="col-md-8" style="height: 100px; display: flex; justify-content: center; align-items: center;">
							<span style="font-size: 18px; color: lightgray; font-weight: 600;">모임 후기가 존재하지 않습니다.</span>
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
			
		$.ajax({
			type:'get',
			url:'meetBookmarkinsert',
			data:{'meet_num':meet_num},	
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

/*	function showPopUp() { 
		//창 크기 지정 
		var width = 500;
		var height = 500;
	//pc화면기준 가운데 정렬 
	var left = (window.screen.width / 2); /*  - (width/2);  
	var top = (window.screen.height / 4);
	//윈도우 속성 지정 
	var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes'; 
	//연결하고싶은url 
	/* const url = "https://seeminglyjs.tistory.com/";  
	const url = "./meetDeclarationForm?meet_num="+${mDetail.meet_num};
	//등록된 url 및 window 속성 기준으로 팝업창을 연다. 
	window.open(url, "", windowStatus); 
	} */

	
	//모임 상세보기 신고하기 
	  $('#meetDeclaration').on('click',function(){
		  console.log('');
		  
		  $('.pop1').css('display','block');
		
		});
	
	 $('#del1').on('click',function(){
		  console.log('');
		  
		  $('.pop1').css('display','none');
		
		});
	  
	  
	 
	 $('#meetCommentBtn').click(function() {
			$('#meetCommentForm').submit();
		});

			 



</script>
</html>