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
	
	
	<!-- =====?????????===================================================================================== -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  
	<script src="resources/paging/jquery.twbsPagination.js"></script>
	<!-- =====?????????===================================================================================== -->
		
	<style>
		#tab4{
			/*????????????*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*??????*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab1,#tab2,#tab3,#tab5,#tab6{
			/*????????????*/
			width: 150px;
			height: 50px;
			
			/*??????*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPageJoin #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPageJoin #tabBox div:hover,#myPageJoin #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPageJoin #tabBox{
			background-color: 89B8FF;
		}
		#myPageJoin #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPageJoin #myPageJoinContainer div{
			padding: 0px;
		}
		
		#myPageJoin #selectedTab, #myPageJoin #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPageJoin #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPageJoin #myTbody{
			text-align: center;
			font-size: 14px;

		}
		
		#myPageMake #buttonCenter, .pagination{
			justify-content: center;
		}
		
		#myPageJoin .row button{
			font-size: 13px;
			width: 130px;
			height: 30px;
			margin:auto;
        	display:block;
		}
	</style>
</head>
<body id="myPageJoin">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPageJoinContainer">
		<!-- ========================================?????? ???========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>???????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageLike'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>????????? ??????</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='myPageJoin'">
						<p>????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageQna'">
						<p>?????? ????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPagePoint'">
						<p>????????? ??????</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		<!-- <button onclick="location.href='myPageMakeScore'">????????? ?????? ?????????</button> -->
		<!-- ========================================????????? ??????========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-2">
						<p>?????? ????????? ??????</p>
					</div>
					<div class="col-md-7">
					</div>
					<div class="col-md-3">
						<p>${loginId} ?????? ????????? ?????? : <span id="grdAvg">??????</span></p>
					</div>
				</div>
				<hr/>

<!-- ????????? ?????? -->
				<div id="list">
					<br/><br/>
					<h4 style="text-align: center">????????? ????????? ????????????.</h4>
					<br/><br/>
					<hr/>
				</div>			
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
<!-- ========================================????????? ??????========================================= -->		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div id="paging">
		            <div class="container">                           
		               <nav aria-label="Page navigation" style="text-align:center">
		                  <ul class="pagination" id="pagination"></ul><br/>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	</div>			
</body>
<script>

var grdAvg = document.getElementById('grdAvg');
grdAvg.innerText = ('${joindto}').slice(0,3)+'???';

var currPage=1;
var totalPage =2;
MakeList(currPage,10);

function MakeList(page, cnt){
	
	$.ajax({
		type:'get',
		url:'appList',
		data:{'page':page,'cnt':cnt},
		dataType:'JSON',
		success: function(data){
			if(data.list.length !== 0){
			console.log(data);
			totalPage = data.pages;
			listDraw(data.list);
			$('#pagination').twbsPagination({
				startPage: currPage,//?????? ?????????
				totalPages: totalPage,//????????? ?????? ??? ????????? ???
				visiblePages:5, //[1][2][3]... ?????? ?????? ?????? ????????? ?????????
				onPageClick:function(evt,page){//?????? ????????? ????????? ??????????????? ????????? ??????
					console.log(evt); //?????? ???????????? ?????? ????????? ?????? ?????????
					console.log(page);//??? ???????????? ?????? ???????????? ?????? ??????
					MakeList(page, 10);
				}
			});
			}else{
				console.log('???????????????');
			}
		},
		error:function(e){
			console.log(e);
		}
	});
}

	function listDraw(list){
	var today = new Date();
	
	console.log('???????????????');
		var content ='';
	list.forEach(function(item){
		var date1 = new Date(item.meet_start);
		var date2 = new Date(item.meet_end);
		console.log(today);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-3">';
		content += '<br/>';
		content += '<a href="meetDetail?meet_num='+item.meet_num+'">';
		content += '<img src="resources/meetPhoto/'+item.meet_thum+'" width ="150px" height="150px"/>';
		content += '</a>';
		content += '</div>';
		content += '<div class="col-md-4" onclick="movePage('+item.meet_num+')" style="cursor:pointer;">';
		content += '<br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">????????????</p></div>';
		content += '<div class="col-md-9"><p align="left">'+item.meet_subject+'</p></div>';
		content += '</div><br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">????????????</p></div>';
		content += '<div class="col-md-9"><p align="left">'+date1.getFullYear()+". "+("0"+(date1.getMonth()+1)).slice(-2)+". "+("0" + date1.getDate()).slice(-2)
		+' ~ '+date2.getFullYear()+". "+("0"+(date2.getMonth()+1)).slice(-2)+". "+("0" + date2.getDate()).slice(-2)+'</p></div>';
		content += '</div><br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">????????????</p></div>';
		content += '<div class="col-md-9"><p align="left">';
		if (item.meet_region == 0) {content += '??????';}
		if (item.meet_region == 1) {content += '??????';}
		if (item.meet_region == 2) {content += '??????';}
		if (item.meet_region == 3) {content += '??????';}
		if (item.meet_region == 4) {content += '??????';}
		if (item.meet_region == 5) {content += '??????';}
		if (item.meet_region == 6) {content += '??????';}
		if (item.meet_region == 7) {content += '?????????';}
		content += '</p></div></div><br/>';
		content += '<div class="row">';
		content += '<div class="col-md-3"><p align="left">????????????</p></div>';
		content += '<div class="col-md-2"><p align="left">'+item.app_stateOne+'???'+'</p></div>';
		content += '<div class="col-md-2"><p align="left">????????????</p></div>';
		content += '<div class="col-md-2"><p align="left">'+item.meet_totalPrs+'???'+'</p></div></div></div>';
		content += '<div class="col-md-3">';
		content += '<div class="col-md-12"><br/><br/><br/><p>?????? ?????? : ';
		if (item.meet_state == 0) {content += '????????????';}
		if (item.meet_state == 1) {content += '?????????';}
		if (item.meet_state == 2) {content += '??????';}
		if (item.meet_state == 3) {content += '?????????';}
		if (item.meet_state == 4) {content += '????????????';}
		content += '</p></div>';
		content += '<div class="col-md-12"><br/><p>?????? ?????? : ';
		if (item.app_state == 0) {content += '?????? ?????????';}
		if (item.app_state == 1) {content += '??????';}
		if (item.app_state == 2) {content += '??????';}
		content += '</p></div></div>';
			
		
		content += '<div class="col-md-2">';
		content += '<br/><br/>';
		content += '<div class="col-md-12"><br/>'
		if (item.meet_state == 0 || item.meet_state == 1 || item.meet_state == 2|| item.meet_state == 3 && item.app_state != 1|| item.meet_state == 4 && item.app_state != 1) // ???????????????0,1,2 ?????? ????????????
		{content +='<button id="btnState1" onclick="alert(\'?????? ????????? ??? ?????? ???????????????\')"style="color:gray;" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">?????? ????????????</button>';}
		if (item.meet_state == 3 && item.app_confirm == 0 && date2 < today)
		{content +='<button id="btnState3" onclick="meetcompleted('+item.meet_num+')"class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">?????? ????????????</button>';}
		if (item.meet_state == 3 && item.app_confirm == 1 ||item.meet_state == 4 && item.app_confirm == 1)
		{content +='<button id="btnState3" onclick="alert(\'?????? ????????? ?????????????????????\')" style="color:gray;" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">?????? ????????????</button>';}
		content += '</div><br/>';
		content += '<div class="col-md-12">';
		if (item.meet_state == 0 && item.app_state == 0 || item.meet_state == 1 && item.app_state == 0)
		{content +='<button onclick="meetStop('+item.meet_num+')" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">?????? ?????? ??????</button>';}
		if (item.meet_state == 0 && item.app_state != 0|| item.meet_state == 1 && item.app_state != 0 || item.meet_state == 2 || item.meet_state == 3 || item.meet_state == 4)
		{content +='<button onclick="alert(\'?????? ????????? ??? ??? ?????? ???????????????\')" style="color:gray;" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">?????? ?????? ??????</button>';}
		content += '</div></div>';
		content += '</div><br/><hr/>';
	});
	//console.log(content);
	$("#list").empty();
	$("#list").append(content);
	}

	function movePage(meet_num) { // ?????????????????? ????????? ??????
		location.href = 'meetDetail?meet_num='+meet_num;	
	}
	
	function meetcompleted(meet_num) { //?????? ???????????? (????????? ??????)
		if (confirm("????????? ?????????????????????????")) {
			location.href="completion?meet_num="+meet_num; 
		}
	}
	
	
	function meetStop(meet_num){ //?????? ????????????(????????? ??????)
		var mem_id = '${sessionScope.loginId}';
		console.log(meet_num,mem_id);
		
		if (confirm("????????? ?????????????????????????")) {
			
			$.ajax({
				type:'get',
				url:'meetStop',
				data:{'meet_num':meet_num,'mem_id':mem_id},
				dataType:'JSON',
				success: function(data){
					console.log(data)
					alert(data.msg);
					MakeList(currPage,10);
				},error:function(e){
					console.log(e)
					alert('????????? ???????????? ???????????? ????????? ???????????? ???????????????.????????? ?????? ????????? ?????????');
				} //????????? ????????? ?????? 3???20??? ?????????---------------------------------------------------------------------
			});
		}
	}
	


</script>

</html>