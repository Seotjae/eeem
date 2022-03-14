<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>모임 목록</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	</style>
	
	
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
			</br>
			</br>
			</br>
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
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
					</div>	
				</div>

				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div id="filterBoard" class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								선호 분야
							</div>
							<form id="reset_test_form">
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="교육/강연"> 교육/강연																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="전시/박람회"> 전시/박람회																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="스포츠/게임"> 스포츠/게임																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="문화/예술/방송"> 문화/예술/방송																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="취미/소모임"> 취미/소모임																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="패션/뷰티"> 패션/뷰티																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="기타모임"> 기타모임																
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
								<input class="inline" type="checkbox" value="서울"> 서울																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="경기"> 경기																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="강원"> 강원																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="충청"> 충청																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="전라"> 전라															
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="경상"> 경상																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="제주"> 제주																
								</li>
							</ul>
							<ul>
								<li class="p-b-6">
								<input class="inline" type="checkbox" value="온라인"> 온라인																
								</li>
							</ul>
							</form>
						</div>
						<div class="filter-col3 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								유/무료 여부
							</div>
							<form id="reset_test_form3">
							<select name="meet_point" class="form-control" onchange="changeListByMeet(this.value)">
						   		<option value="3">전체</option>
						   		<option value="3">유료</option>
						   		<option value="3">무료</option>	
						   			<c:forEach var="list" items="${meetPointList}">
						    			<option value="${list.idx}" <c:if test="${meet_point eq list.idx}">selected</c:if>>${list.meet_point}</option>	
						   			</c:forEach>
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
									<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder=" 검색">
									</form>
									<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
										<i class="zmdi zmdi-search"></i>
									</button>
								</div>
							</div>
							<div class="filter-col4 p-b-27">
									<div class="mtext-102 cl2 p-b-15">
										<input type="button" id="btn_reset" value="초기화">
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 모임 리스트 -->
			
			<div id="oldList">
			<c:if test="${meetList.size() == 0}">
			<div class="marginAuto" >
				<h5>해당하는 제품이 존재하지 않습니다.</h5>
			</div>
		</c:if>
			<div class="row isotope-grid">
					<c:forEach items="${meetList}" var="list">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div id="block2" class="block2">
						<div class="block2-pic hov-img0">
							<a href="detail?idx=${list.meet_num}&rev_Num=1"><img src="resources/meetPhoto/${list.meet_thum}" alt="IMG-PRODUCT"></a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<a href="detail?idx=${list.meet_num}&rev_Num=1" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${list.meet_subject} / 시작일 : ${list.meet_start}
								</a>
									<fmt:formatNumber value="${list.meet_point}" pattern="#,### POINT" />
							</div>
						</div>
					</div>
					</div>
						</c:forEach>
				</div>		
			</div>
			
		
			<!-- 모임리스트 END -->


			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<button id="addBtn" onclick="moreList()" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"><span>Load More</span></button>
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
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/slick/slick.min.js"></script>
	<script src="resources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>	
<!--===============================================================================================-->
	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>

<!-- 검색 초기화 start-->
<script>

// 선호 분야 
$(document).ready(function(){
    //btn_reset 을 클릭했을때의 함수
    $( "#btn_reset").click(function () {
        $( "#reset_test_form" ).each( function () {
            this.reset();
        });
    });
});

// 선호 지역
$(document).ready(function(){
    //btn_reset 을 클릭했을때의 함수
    $( "#btn_reset").click(function () {
        $( "#reset_test_form2" ).each( function () {
            this.reset();
        });
    });
});

// 가격(유/무료) 여부
$(document).ready(function(){
    //btn_reset 을 클릭했을때의 함수
    $( "#btn_reset").click(function () {
        $( "#reset_test_form3" ).each( function () {
            this.reset();
        });
    });
});

// 키워드 검색
$(document).ready(function(){
    //btn_reset 을 클릭했을때의 함수
    $( "#btn_reset").click(function () {
        $( "#reset_test_form4" ).each( function () {
            this.reset();
        });
    });
});

</script>
<!-- 검색 초기화 start-->



</html>