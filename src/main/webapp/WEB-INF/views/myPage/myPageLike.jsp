<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
			/* text-align: center; */
			font-size: 14px;

		}
		#myPageQnA #myTbody img{
			max-width: 150px;
			max-height: 200px;
		}
		#myPageQnA #buttonCenter, .pagination{
			justify-content: center;
		}
		
		#pntrChg{
			cursor: pointer;
		}
		#myPageQnA .how-pagination1{
			width:auto;
			min-width:36px;
		}
		
		#cancleBtn{
			font-size: 13px;
			width: 110px;
			height: 30px;
		}


	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

<!-- ========================================?????? ???========================================= -->
	<div class="container-fluid" id="myPageQnAContainer">
	
<!-- ========================================?????? ???========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div class="col-md-2" onclick="location.href='myPageUpdate'">
						<p>???????????? ??????</p>
					</div>
					<div id="selectedTab"  class="col-md-2" onclick="location.href='myPageLike'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageMake'">
						<p>????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageJoin'">
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
		
<!-- ========================================????????? ??????========================================= -->
<!-- ????????? ?????? -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-12">
						<p>???????????? ??????</p>
						<hr/>
					</div>
				</div>
				
				
<!-- ????????? ?????? -->
				<div id="list">
					<br/><br/>
					<h4 style="text-align: center">??????????????? ????????? ????????? ????????????.</h4>
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>


		
	</div>

</body>
<script>
likeListCall();
function likeListCall() {
	$.ajax({
		type:'get',
		url:'likeListCall',
		data:{},
		dataType:'JSON',
		success : function(data) {
			if(data.list.length !== 0){
			console.log(data);
			listDraw(data.list);
			}else{
				console.log('???????????????');
			}
		},
		error: function(e) {
			console.log(e);
		}
		
	});	
}

function listDraw(list){
	var content = '';
	
	list.forEach(function(item, idx){
		var meet_start = new Date(item.meet_start);
		var meet_end = new Date(item.meet_end);
		meet_start = meet_start.toLocaleString().substring(0,11);
		meet_end = meet_end.toLocaleString().substring(0,11);
		console.log(meet_start,"/",meet_end);
		content += '<div class="row" id="myTbody">';
		
			content += '<div class="col-md-3" onclick="movePage('+item.meet_num+')" style="display:flex;align-items: center;justify-content: center; cursor:pointer;">';
				content += '<img src="resources/meetPhoto/'+item.meet_thum+'"/>';
			content += '</div>';
			
			content += '<div class="col-md-4" onclick="movePage('+item.meet_num+')" style="cursor:pointer;">';
				content += '<br/>'
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>?????? ??????</p>';
					content += '</div>';
					content += '<div class="col-md-9">';
						content += '<p>'+item.meet_subject+'</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
				
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>?????? ??????</p>';
					content += '</div>';
					content += '<div class="col-md-9">';
						content += '<p>'+meet_start+' ~ '+meet_end+'</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
				
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>?????? ??????</p>';
					content += '</div>';
					content += '<div class="col-md-9">';
						content += '<p>';
						switch (item.meet_region){
							case 0: content +='??????';
							break;
							case 1:	content +='??????';
							break;
							case 2:	content +='??????';
							break;
							case 3:	content +='??????';
							break;
							case 4:	content +='??????';
							break;
							case 5:	content +='??????';
							break;
							case 6:	content +='??????';
							break;
							case 7:	content +='?????????';
							break;
						}
						content += '</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
				
				content += '<div class="row">';
					content += '<div class="col-md-3">';
						content += '<p>????????????</p>';
					content += '</div>';
					content += '<div class="col-md-2">';
						content += '<p>'+item.app_prs+' ???</p>';
					content += '</div>';
					
					content += '<div class="col-md-2">';
						content += '<p>????????????</p>';
					content += '</div>';
					content += '<div class="col-md-2">';
						content += '<p>'+item.meet_totalPrs+' ???</p>';
					content += '</div>';
				content += '</div>';
				content += '<br/>';
			content += '</div>';
			
			content += '<div class="col-md-3" style="display:flex;align-items: center;justify-content: center;">';
			content += '<p>?????? ?????? : ';
			switch (item.meet_state){
				case 0: content +='????????????';
				break;
				case 1:	content +='?????????';
				break;
				case 2:	content +='??????';
				break;
				case 3:	content +='?????????';
				break;
				case 4:	content +='????????????';
				break;
			}
			content += '</p>';
			content += '</div>';
			
			content += '<div class="col-md-2" style="display:flex;align-items: center;justify-content: center;">';
				content += '<div class="row">';
					content += '<div class="col-md-12">';
						content += '<input type="button" onclick="delBmk('+item.meet_num+',\''+item.bmk_loginId+'\')" value="???????????? ??????" class="flex-c-m cl0 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" id="cancleBtn"/>';
					content += '</div>';
				content += '</div>';
			content += '</div>'
		
			
		content += '</div>';
		content += '<hr/>';
		
		
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);
}

function movePage(meet_num) {
	location.href = 'meetDetail?meet_num='+meet_num;	
}


function delBmk(meet_num,mem_id) {
	if (confirm('???????????? ?????????????????????????')) {
		$.ajax({
			type:'get',
			url:'bookmarkinsert',
			data:{'meet_num':meet_num,'mem_id':mem_id.toString()},
			dataType:'JSON',
			success : function(data) {
				console.log(data);
				likeListCall();
			},
			error: function(e) {
				console.log(e);
			}
		});
	}
	
}

</script>

</html>