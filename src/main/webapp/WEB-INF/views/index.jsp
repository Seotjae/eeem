<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>EEEm</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
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
	<link rel="stylesheet" type="text/css" href="resources/css/swiper.min.css">
	<script src="resources/js/jquery-1.12.4.min.js"></script>
	<script src="resources/js/swiper.min.js"></script>
<style>
hr { 
  display: block;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  margin-left: auto;
  margin-right: auto;
  border-style: inset;
  border-width: 100%;
} 
</style>


</head>
<body class="animsition">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<!-- Slider -->
	<section class="section-slide">
	    <div class="swiper main-swiper">
	      	<div class="swiper-wrapper">
	      		<c:if test="${mainmeet != null}">
	      		<c:forEach items="${mainmeet}" var="mainmeet">
		        <div class="swiper-slide" style="background: url(resources/meetPhoto/${mainmeet.meet_thum}) no-repeat center center; background-size: cover;">
		        	<a href="#">
			        	<span style="#">
			        		지역:	<c:if test="${mainmeet.meet_region == 0}">서울</c:if>
								<c:if test="${mainmeet.meet_region == 1}">경기</c:if>
								<c:if test="${mainmeet.meet_region == 2}">충청</c:if>
								<c:if test="${mainmeet.meet_region == 3}">강원</c:if>
								<c:if test="${mainmeet.meet_region == 4}">전라</c:if>
								<c:if test="${mainmeet.meet_region == 5}">경상</c:if>
								<c:if test="${mainmeet.meet_region == 6}">제주</c:if>
								<c:if test="${mainmeet.meet_region == 7}">온라인</c:if>
								<br/>
			        		제목:	${mainmeet.meet_subject}<br/>
			        		모임분야:  <c:if test="${mainmeet.meet_interest == 0}">교육 / 강연</c:if>
									<c:if test="${mainmeet.meet_interest == 1}">취미 / 소모임</c:if>
									<c:if test="${mainmeet.meet_interest == 2}">문화 / 예술 / 방송</c:if>
									<c:if test="${mainmeet.meet_interest == 3}">전시 / 박람회</c:if>
									<c:if test="${mainmeet.meet_interest == 4}">스포츠 / 게임</c:if>
									<c:if test="${mainmeet.meet_interest == 5}">패션 / 뷰티</c:if>
									<c:if test="${mainmeet.meet_interest == 6}">기타</c:if>
									<br/>
			        		모임 날짜: ${mainmeet.meet_start} ~ ${mainmeet.meet_end}<br/>
		        		</span>
		        	</a>
		        </div>
		        </c:forEach>
		        </c:if>
		        <c:if test="${mainmeet == null}">
	      		<c:forEach items="${mainusermeet}" var="mainusermeet">
		        <div class="swiper-slide" style="background: url(resources/meetPhoto/${mainusermeet.meet_thum}) no-repeat center center; background-size: cover;">
		        	<a href="#">
			        	<span>
			        		지역:	<c:if test="${mainusermeet.meet_region == 0}">서울</c:if>
								<c:if test="${mainusermeet.meet_region == 1}">경기</c:if>
								<c:if test="${mainusermeet.meet_region == 2}">충청</c:if>
								<c:if test="${mainusermeet.meet_region == 3}">강원</c:if>
								<c:if test="${mainusermeet.meet_region == 4}">전라</c:if>
								<c:if test="${mainusermeet.meet_region == 5}">경상</c:if>
								<c:if test="${mainusermeet.meet_region == 6}">제주</c:if>
								<c:if test="${mainusermeet.meet_region == 7}">온라인</c:if>
								<br/>
			        		제목:	${mainusermeet.meet_subject}<br/>
			        		모임분야:  <c:if test="${mainusermeet.meet_interest == 0}">교육 / 강연</c:if>
									<c:if test="${mainusermeet.meet_interest == 1}">취미 / 소모임</c:if>
									<c:if test="${mainusermeet.meet_interest == 2}">문화 / 예술 / 방송</c:if>
									<c:if test="${mainusermeet.meet_interest == 3}">전시 / 박람회</c:if>
									<c:if test="${mainusermeet.meet_interest == 4}">스포츠 / 게임</c:if>
									<c:if test="${mainusermeet.meet_interest == 5}">패션 / 뷰티</c:if>
									<c:if test="${mainusermeet.meet_interest == 6}">기타</c:if>
									<br/>
			        		모임 날짜: ${mainusermeet.meet_start} ~ ${mainusermeet.meet_end}<br/>
		        		</span>
		        	</a>
		        </div>
		        <!-- 
		        <div class="swiper-slide" style="background: url(resources/images/slide-02.jpg) no-repeat center center; background-size: cover;"></div>
		        <div class="swiper-slide" style="background: url(resources/images/slide-03.jpg) no-repeat center center; background-size: cover;"></div>
		        <div class="swiper-slide" style="background: url(resources/images/slide-01.jpg) no-repeat center center; background-size: cover;"></div>
		        <div class="swiper-slide" style="background: url(resources/images/slide-02.jpg) no-repeat center center; background-size: cover;"></div>
		         -->
		        </c:forEach>
		        </c:if>
			</div>
		</div>
	    <div class="main-button-next"></div>
	    <div class="main-button-prev"></div>
	</section>
	<!--  Slider  end ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->


	<!-- Product -->
	<section class="bg0 p-t-23 p-b-140">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					최근 모임 게시글<br/>
				</h3>
				
				<hr/>
			</div>
		</div>
<!-- 모임 리스트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
			<div class="row isotope-grid">
				
				<c:forEach items="${meetdto}" var="meeting">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					
						<div class="block2">
							<div class="block2-pic hov-img0">
								<a href="meetdetail?meet_num=${meeting.meet_num}"><img src="resources/meetPhoto/${meeting.meet_thum}" alt="IMG-PRODUCT"></a>
							</div>
							
							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l">
									<a href="meetdetail?meet_num=${meeting.meet_num}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										모임지역 : 
										<c:if test="${meeting.meet_region == 0}">서울</c:if>
										<c:if test="${meeting.meet_region == 1}">경기</c:if>
										<c:if test="${meeting.meet_region == 2}">충청</c:if>
										<c:if test="${meeting.meet_region == 3}">강원</c:if>
										<c:if test="${meeting.meet_region == 4}">전라</c:if>
										<c:if test="${meeting.meet_region == 5}">경상</c:if>
										<c:if test="${meeting.meet_region == 6}">제주</c:if>
										<c:if test="${meeting.meet_region == 7}">온라인</c:if>
										<br/>
										제목 : ${meeting.meet_subject}<br/>
										모임기간 : ${meeting.meet_start} ~ ${meeting.meet_end}<br/>
									</a>
									<span class="stext-105 cl3">
										
									</span>
								</div>
	
								<div class="block2-txt-child2 flex-r p-t-3">
									<span class="btn-addwish-b2 dis-block pos-relative">
										<button onclick="like('${meeting.meet_num}')">
										<img class="icon-heart1 dis-block trans-04 hreatbtn" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
										</button>
									</span>
								</div>
							</div>
						</div>
					
				</div>
				</c:forEach>
				
			</div>
<!-- 모임 리스트 end ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					Load More
				</a>
			</div>
	</section>

<jsp:include page="/WEB-INF/views/include/footer.jsp"/>



	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>


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
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>
		<script type="text/javascript">
	$(document).ready(function(){

		// 메인비주얼 스와이프
		var mainSwiper = new Swiper('.main-swiper', {
		coverflowEffect: {
			rotate: 0,
			stretch: 0,
			depth: 100,
			modifier: 1,
			slideShadows: false,
		},
		spaceBetween: -180,
		slidesPerView: 'auto',
		centeredSlides: true,
		loop: true,
		/*
		autoplay: {
				delay: 2500,
				disableOnInteraction: false,
		},
		*/
		pagination: false,
		navigation: {
				prevEl: '.main-button-prev',
				nextEl: '.main-button-next',
		}
		});

	});
	</script>
</body>
<script>
function like(meet_num){
	$.ajax({
		type:'get',
		url:'bookmarkinsert',
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
	
</script>

</html>