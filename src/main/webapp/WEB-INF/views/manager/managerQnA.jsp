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
					<div class="col-md-2" onclick="location.href='managerMeetList'">
						<p>??????????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerAdvertisement'">
						<p>????????????</p>
					</div>
					<div id="selectedTab" class="col-md-2" onclick="location.href='managerQnA'">
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
		<!-- ========================================????????? ??????========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-12">
						<h3 id="singo">?????? ?????? ??????</h3>
						<hr/>
					</div>
				</div>
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
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
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
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
	</div>
</body>


<script>
var currPage=1;
QnAList(currPage,10);


function random(que_num) {
	var id = "#opt"+que_num;
	//console.log($(id));
	if(confirm("?????? ?????? ???????????????????")){
		
	console.log('change',que_num);
	
	$.ajax({
		type:'POST',
		url:'upQue_state',
		data:{'que_num':que_num},
		dataType:'JSON',
		success : function(data) {
			var totalPage = data.pages;
			listDraw(data.list);
			console.log(que_num);
		},
		error: function(e) {
			console.log(e);
		}
	});
	QnAList(currPage,10);
	
	}else{
		$(id).attr('selected','selected');
		
	};
	
	
}


function QnAList(page,cnt) {
	
	$.ajax({
		type:'get',
		url:'QnAList',
		data:{'page':page,'cnt':cnt},
		dataType:'JSON',
		success : function(data) {
			
			var totalPage = data.pages;
			listDraw(data.list);
			console.log(data);
			
			$('#pagination').twbsPagination({
				startPage: currPage,//?????? ?????????
				totalPages: totalPage,//????????? ?????? ??? ????????? ???
				visiblePages:5, //[1][2][3]... ?????? ?????? ?????? ????????? ?????????
				onPageClick:function(evt,page){//?????? ????????? ????????? ??????????????? ????????? ??????
					//console.log(evt); //?????? ???????????? ?????? ????????? ?????? ?????????
					//console.log(page);//??? ???????????? ?????? ???????????? ?????? ??????
					QnAList(page, 10);
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
		var que_date = new Date(item.que_date);
		que_date = que_date.toLocaleString().substring(0,11);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p>'+item.mem_id+'</a></p></div>';
		content += '<div class="col-md-2"><p><a href="queDetail?que_num='+item.que_num+'" onclick="#">'+item.que_subject+'</a></p></div>';
		content += '<div class="col-md-2"><p>'+que_date+'</p></div>';
		content += '<div class="col-md-2"><p>'
		
		/////////////////////?????????/////////////////////
		if(item.que_admin == 'noData'){content += '-';}
		else{content += item.que_admin}
		content +='</p></div>';
		/////////////////////?????????END/////////////////////
		
		/////////////////////????????????/////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.que_state==0){content += '<select name="que_state" id="que_state" onchange="random('+item.que_num+')"><option id="opt'+item.que_num+'">?????????</option>'+'<option>????????????</option></select>';}
		if(item.que_state==1){content += '????????????';}
		content += '</p></div>';
		/////////////////////????????????END/////////////////////
		
		/////////////////////????????????/////////////////////
		content += '<div class="col-md-2"><p>'
		if(item.que_category == 0){content += '??????';}
		if(item.que_category == 1){content += '??????';}
		if(item.que_category == 2){content += '?????????';}
		if(item.que_category == 3){content += '??????';}
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