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
		#tab1,#tab2,#tab3,#tab4,#tab6{
			/*????????????*/
			width: 150px;
			height: 50px;
			
			/*??????*/
			font-size: 18px;
			color : white;
			padding-top: 10px;			
		}
		#myPagePoint #tabBox div{
			height: 50px;
			padding: 0px;
		}
		#myPagePoint #tabBox div:hover,#myPagePoint #tabBox p:hover{
			background-color: #7AD7BE;
			color : yellow;
			cursor: pointer;
		}

		#myPagePoint #tabBox{
			background-color: 89B8FF;
		}
		#myPagePoint #tabBox p{
			font-family: Poppins-Bold;
			line-height:50px;
			width:100%;
			height:100%;
			text-align: center;
			font-size: 18px;
			color : white;
		}
		#myPagePoint #myPagePointContainer div{
			padding: 0px;
		}
		
		#myPagePoint #selectedTab, #myPagePoint #selectedTab p{
			background-color: #7AD7BE;
			color : yellow;
		}
		
		#myPagePoint #myThead p{
			text-align: center;
			font-size: 15px;
			font-weight: 600;
		}
		#myPagePoint #myTbody{
			text-align: center;
			font-size: 14px;
		}
		#myPagePoint #buttonCenter, .pagination{
			justify-content: center;
		}
	</style>
</head>
<body id="myPagePoint">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>


	<div class="container-fluid" id="myPagePointContainer">
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
					<div class="col-md-2" onclick="location.href='myPageJoin'">
						<p>????????? ??????</p>
					</div>
					<div class="col-md-2" onclick="location.href='myPageQna'">
						<p>?????? ????????? ??????</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='myPagePoint'">
						<p>????????? ??????</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		
		<!-- ========================================????????? ??????========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-12">
						<p>${loginId} ?????? ????????? ?????? ??????</p><hr/>
					</div>
				</div>
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>??????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>????????? ?????????</p>
					</div>
					<div class="col-md-2">
						<p>????????? ?????? ??????</p>
					</div>
					<div class="col-md-2">
						<p>????????? ?????????</p>
					</div>
					<div class="col-md-1">
						<p>????????????</p>
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
		                  <ul class="pagination" id="pagination"></ul>
		               </nav>               
		            </div>
				</div>
			</div>
		</div>
	</div>			
</body>
<script>
var msg = "${msg}";

if(msg != ""){
	alert(msg);
	
}

function addComma(num) {
  var regexp = /\B(?=(\d{3})+(?!\d))/g;
  return num.toString().replace(regexp, ',');
}

var currPage=1;
var totalPage =2;
PointList(currPage,10);

function PointList(page, cnt){
	
	$.ajax({
		type:'get',
		url:'PointList',
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
					PointList(page, 10);
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
	
function listDraw(list){
	console.log('???????????????');
	var content ='';
	list.forEach(function(item){
		var date = new Date(item.pt_date);
		var pt_prev = item.pt_prev;
		var pt_count = item.pt_count;
		var pt_next = item.pt_next;
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p>'+date.getFullYear()+"-"+("0"+(date.getMonth()+1)).slice(-2)+"-"+("0" + date.getDate()).slice(-2)+'</p></div>';
		content += '<div class="col-md-2"><p>'
		if (item.pt_type == 0) {content += '??????';}
		if (item.pt_type == 1) {content += '?????????';}
		if (item.pt_type == 2) {content += '??????';}
		if (item.pt_type == 3) {content += '??????';}
		if (item.pt_type == 4) {content += '??????';}
		if (item.pt_type == 5) {content += '??????';}
		content += '</p></div>'
		content += '<div class="col-md-2"><p>'+addComma(pt_prev)+'</p></div>';
		content += '<div class="col-md-2"><p>'+addComma(pt_count)+'</p></div>';
		content += '<div class="col-md-2"><p>';
		if (addComma(pt_prev) == '0') {content += addComma(pt_count);}
		if (addComma(pt_prev) !== '0') {content += addComma(pt_next);}
		content += '</p></div>';
		content += '<div class="col-md-1"><p>'
		if (item.pt_type == 0 || item.pt_type == 3) {content += '***';}
		if (item.pt_type == 1 || item.pt_type == 2 || item.pt_type == 4 || item.pt_type == 5) {content += item.pt_targetNum}
		content += '</p></div>'
		content += '</div>';
		content += '<hr/>';	
	});
	

	//console.log(content);
	$("#list").empty();
	$("#list").append(content);

	}
}

</script>

</html>