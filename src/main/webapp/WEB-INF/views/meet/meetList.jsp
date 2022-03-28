<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>모임 목록</title>
	<meta charset="UTF-8">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
	<style>
	.inline {
    display: inline;
    outline: none;
    border: none;
	}
	#block2 {
	border: 1px solid black;
	}
	
	#block2:hover {
	border: 2px solid skyblue;
	}
	
	#filterBoard{
	background-color: #89B8FF;
	opacity: 0.8;
	}
	
	#btn_reset{
	border: 2px solid black;
    font-size: 20px;
    float: right;
    width: 150px;
    background-color: white;
	}
	
	input[type="checkbox"]{
	display: inline-block;
	width: 20px;
	height: 20px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
	}
	
	#nonMeet{
	text-align:center;
	font-size: 20;
	}
	
	
	.display2{
	display: none;
	position: relative;
	}
	
	</style>
	
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
</head>
<body class="animsition">

<jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<!-- Product -->
	<section class="bg0 p-t-23 p-b-140">
		<div class="container">
			<div class="p-b-10">
			<br/>
			<br/>
			<br/>
				<h3 class="ltext-103 cl5">
					Meeting List
				</h3>
			</div>
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-c-m m-tb-10">
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						 Filter
					</div>
				</div>

				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div id="filterBoard" class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								선호 분야
							</div>
							<form id="reset_test_form" >
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="0"> 교육/강연																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="1"> 전시/박람회																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="2"> 스포츠/게임																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="3"> 문화/예술/방송																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="4"> 취미/소모임																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="5"> 패션/뷰티																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_interest" type="checkbox" value="6"> 기타모임																
								</li>
							</ul>
							</form>
						</div>
						<div class="filter-col2 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								지역
							</div>
							<form id="reset_test_form2">
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="0"> 서울																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="1"> 경기																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="2"> 강원																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="3"> 충청																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="4"> 전라															
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="5"> 경상																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="6"> 제주																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" name="meet_region" type="checkbox" value="7"> 온라인																
								</li>
							</ul>
							</form>
						</div>
						<div class="filter-col3 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								유/무료 여부
							</div>
							<form id="reset_test_form3">
							<select name="meet_point" class="form-control">
						   		<option value="0">전체</option>
						   		<option value="1">무료</option>
						   		<option value="2">유료</option>
						   </select>
						   </form>
								</div>	
								<!-- 필터 검색 -->
									<div class="filter-col4 p-b-27">
									<div class="mtext-102 cl2 p-b-15">
										검색
									</div>
										<div class="bor8 dis-flex p-l-15">
										<form id="reset_test_form4">
									<input onkeyup="enterkey()" class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" autocomplete="off"
									id="keyword" name="keyword" value="${keyword}" placeholder=" 제목">
									</form>
									<a href="javascript:void(0);" onclick="changeListByMeet()" id="searchBtn" class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
									<span class="zmdi zmdi-search"></span></a>
								</div>
							</div>
							<!-- 초기화 -->	
									<div class="mtext-102 cl2 p-b-15">
										<a href="meetList"><input type="button" id="btn_reset" value="초기화" onclick="location.href='.'"></a>
									</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 모임 리스트 -->
			<form id="serchTexForm">
			<input type="hidden" name="viewCount" id="viewCount" value="0">
			<input type="hidden" name="startCount" id="startCount" value="0">
			<div id="oldList">
			<c:if test="${meetList.size() == 0}">
			<div class="marginAuto" id="nonMeet">
				<h5>해당하는 모임이 존재하지 않습니다.</h5>
			</div>
		</c:if>
		
			<div class="row isotope-grid" id="more_list">
					<c:forEach items="${meetList}" var="list">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="display2">
					<div id="block2" class="block2">
						<div class="block2-pic hov-img0">
							<a href="meetDetail?meet_num=${list.meet_num}"><img src="resources/meetPhoto/${list.meet_thum}" alt="IMG-PRODUCT"></a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<a href="meetDetail?meet_num=${list.meet_num}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${list.meet_subject} / 시작일 : ${list.meet_start}
								</a>
									<fmt:formatNumber value="${list.meet_point}" pattern="#,### POINT" />
							</div>
							<div class="block2-txt-child2 flex-r p-t-3">
									<span class="btn-addwish-b2 dis-block pos-relative">
										<button onclick="like('${list.meet_num}')">
										<img class="icon-heart1 dis-block trans-04 hreatbtn" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
										</button>
									</span>
								</div>
						</div>
						</div>
					</div>
					</div>
						</c:forEach>
				</div>		
	
			</div>
			</form>
			<!-- 모임리스트 END -->
			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a id="more_btn_a" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04" href="javascript:moreContent('more_List',8);">
				More
				</a>
			</div>
			
	</section>
	
	
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>


<!--===============================================================================================-->	
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/slick/slick.min.js"></script>
	<script src="resources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/parallax100/parallax100.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	
	
<!--===============================================================================================-->
	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>

<script>



$(function(){
    $(".display2").slice(0, 8).show(); // select the first ten
    $("#more_btn_a").click(function(e){ // click event for load more
        e.preventDefault();
    	console.log($(".display2:hidden").length);
        if($(".display2:hidden").length == 0){ // check if any hidden divs still exist
        	$("#more_btn_a").removeAttribute('href'); // alert if there are none left
        }
        $(".display2:hidden").slice(0, 8).show(); // select next 10 hidden divs and show them
    });
});

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
			console.log(e)
			alert('즐겨찾기 추가가 실패하였습니다. 잠시후 다시 시도해주세요.')
		}
	});
	
	
};


function enterkey() {	
    if (window.event.keyCode == 13) {
         // 엔터키가 눌렸을 때 실행할 내용
         DoSearch();
    }
};


function changeListByMeet(){
	//var meet_region = $('input[name="meet_region"]:checked').length;
	var meet_region = [];
	var meet_interest = [];
	
	    $('input:checkbox[name="meet_region"]:checked').each(function(e){
	        var value = $(this).val();
	        meet_region.push(value);        
	    })
	    
	    $('input:checkbox[name="meet_interest"]:checked').each(function(e){
	        var value = $(this).val();
	        meet_interest.push(value);        
	    })
	    
	   
	
	
	
	var meet_subject = "${meet_subject}";
	var meet_point = $('select[name="meet_point"] option:selected').val();
	//var meet_region = $('input:checkbox[name="meet_region"]:checked').val();
	//var meet_interest = $('input:checkbox[name="meet_interest"]:checked').val();
	var keyword = $('#keyword').val();
	
	
	location.href = "meetList?num=1&=meet_subject" + meet_subject + "&meet_point=" + meet_point+ "&meet_region=" + meet_region+"&meet_interest=" + meet_interest+ "&keyword=" + keyword + "#meetList";
	console.log(meet_region,meet_interest);
	
};


</script>





</html>