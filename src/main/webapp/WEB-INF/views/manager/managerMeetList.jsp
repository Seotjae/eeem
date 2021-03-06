<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<meta charset="UTF-8">
	<title>EEEm</title>
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
    
    <!-- =====?????????===================================================================================== -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  
	<script src="resources/paging/jquery.twbsPagination.js"></script>
	<!-- =====?????????===================================================================================== -->
    
    
	<style>
		#tab1{
			/*????????????*/
			width: 150px;
			height: 50px;
			
			/*??????*/
			font-size: 18px;
			color : white;
			padding-top: 10px;
		}
		#tab5{
			/*????????????*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*??????*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab2,#tab3,#tab4,#tab6{
			/*????????????*/
			width: 150px;
			height: 50px;
			
			/*??????*/
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
		
		#singo{
			color: #89B8FF;
		}
		
		.manager{
			color: #ff9797;
		}

		.search1{
			border: 1px solid black;
		}
		
		.search2{
		    bottom: 410px;
		    right: 500px;
		    width: 150px;
		    height: 25px;
		}
		
		.search3{
			border: 1px solid black;
		    right: 286px;
		    bottom: 410px;
		}
		
		.search4{
			right: 270px;
			bottom: 410px;
		}
		

		

		


	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

	<div class="container-fluid" id="myPageQnAContainer">
		<!-- ========================================?????? ???========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<h1 class="manager">????????? ?????????</h1>
			</div>
		</div>
		<br/>
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='managerDeclaration'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerSanctions'">
						<p>????????????</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='location.href='managerMeetList'">
						<p>??????????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerAdvertisement'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerQnA'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerMemList'">
						<p>????????????</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		<br/>
		<br/>

		</div>

		<!-- ========================================????????? ??????========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-8">
						<h3 id="singo">????????????</h3>
					</div>
					
						<div class="col-md-2">
							<select name="meet_state" class="search2">
								<option value="5" selected="selected">??????</option>
								<option value="0">????????????</option>
								<option value="1">?????????</option>
								<option value="2">??????</option>
								<option value="3">?????????</option>
								<option value="4">????????????</option>
							</select>
						</div>
						<div class="bor8 dis-flex p-l-15 col-md-2">
							<form id="reset_test_form4">
								<input class="search3" type="text" autocomplete="off"
								id="keyword" name="keyword" placeholder=" ??????" >
							</form>
							<a href="javascript:void(0);" onclick="" id="searchBtn" class="search4">
							<span class="zmdi zmdi-search"></span></a>
						</div>	
				</div>
				<hr/>				
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>????????????(??????)</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>??????</p>
					</div>
					<div class="col-md-2">
						<p>??????</p>
					</div>
					<div class="col-md-2">
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
				</div>
				<hr/>
					<!---------------- ????????? ?????? ---------------->
				<div id="list">
					<div class="row" id="myTbody">
						<div class="col-md-2">
							<p>????????????(??????)</p>
						</div>
						<div class="col-md-2">
							<p>????????????</p>
						</div>
						<div class="col-md-2">
							<p>??????</p>
						</div>
						<div class="col-md-2">
							<p>??????</p>
						</div>
						<div class="col-md-2">
							<p>?????????</p>
						</div>
						<div class="col-md-2">
							<p>????????????</p>
						</div>
					</div>
				</div>
				<hr/>
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	
</body>


<script>

var $meet_state = $('select[name="meet_state"] option:selected').val();
var $meet_subject = $('#keyword').val();
console.log($meet_state,'/',$meet_subject);

$('select[name="meet_state"]').change(function() {
	console.log('change');
	$meet_state = $('select[name="meet_state"] option:selected').val();
	$meet_subject = $('#keyword').val();
	managerMeetListCall(currPage,10);
});

$('#searchBtn').click(function() {
	console.log('click');
	$meet_state = $('select[name="meet_state"] option:selected').val();
	$meet_subject = $('#keyword').val();
	managerMeetListCall(currPage,10);
});
$('#keyword').keydown(function() {
	if (event.keyCode === 13) {
		$('#searchBtn').click();
		event.preventDefault();
	}
	console.log('down');
});



var currPage=1;
managerMeetListCall(currPage,10);

function managerMeetListCall(page,cnt) {
	
	$.ajax({
		type:'get',
		url:'managerMeetListCall',
		data:{'page':page,'cnt':cnt,'meet_state':$meet_state,'meet_subject':$meet_subject},
		dataType:'JSON',
		success : function(data) {
			
			var totalPage = data.pages;
			listDraw(data.list);
			console.log(totalPage);
			
			$('#pagination').twbsPagination({
				startPage: currPage,//?????? ?????????
				totalPages: totalPage,//????????? ?????? ??? ????????? ???
				visiblePages:5, //[1][2][3]... ?????? ?????? ?????? ????????? ?????????
				onPageClick:function(evt,page){//?????? ????????? ????????? ??????????????? ????????? ??????
					//console.log(evt); //?????? ???????????? ?????? ????????? ?????? ?????????
					//console.log(page);//??? ???????????? ?????? ???????????? ?????? ??????
					managerMeetListCall(page, 10);
				}
			});
			
		},
		error: function(e) {
			console.log(e);
		}
	});
};

function listDraw(list){
	//console.log('???????????????');
	var content = '';		
	
		list.forEach(function(item, idx){
		var meet_start = new Date(item.meet_start);
		var meet_end = new Date(item.meet_end);
		//console.log(meet_start,meet_end);
		meet_start = meet_start.toLocaleString().substring(0,11);
		meet_end = meet_end.toLocaleString().substring(0,11);
		//console.log(idx,item);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p><a href="meetDetail?meet_num='+item.meet_num+'" onclick="#">'+item.meet_subject+'</a></p></div>';
		content += '<div class="col-md-2"><p>'+meet_start+'<br/> ~ '+meet_end+'</p></div>';
		////////////////////?????? ?????? Start////////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.meet_interest == 0){content += '?????? / ??????';}
		if(item.meet_interest == 1){content += '?????? / ?????????';}
		if(item.meet_interest == 2){content += '?????? / ??????/ ??????';}
		if(item.meet_interest == 3){content += '?????? / ?????????';}
		if(item.meet_interest == 4){content += '????????? / ??????';}
		if(item.meet_interest == 5){content += '?????? / ??????';}
		if(item.meet_interest == 6){content += '??????';}
		content += '</p></div>';
		////////////////////?????? ?????? End////////////////////////

		////////////////////?????? ?????? Start////////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.meet_region == 0){content += '??????';}
		if(item.meet_region == 1){content += '??????';}
		if(item.meet_region == 2){content += '??????';}
		if(item.meet_region == 3){content += '??????';}
		if(item.meet_region == 4){content += '??????';}
		if(item.meet_region == 5){content += '??????';}
		if(item.meet_region == 6){content += '??????';}
		if(item.meet_region == 7){content += '?????????';}
		content += '</p></div>';
		////////////////////?????? ?????? End////////////////////////
		
		content += '<div class="col-md-2"><p>'
		if(item.meet_point == 0){content += '??????';}
		else{content += item.meet_point;};
		content += '</p></div>';
		
		////////////////////?????? ?????? Start////////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.meet_state == 0){content += '????????????';}
		if(item.meet_state == 1){content += '?????????';}
		if(item.meet_state == 2){content += '??????';}
		if(item.meet_state == 3){content += '?????????';}
		if(item.meet_state == 4){content += '????????????';}
		content += '</p></div>';
		

		
		content += '</div>';		
		content += '<hr/>';	
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);
}










</script>

</html>