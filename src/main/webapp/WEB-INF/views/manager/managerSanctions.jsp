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
		textarea:disabled {
		  background: #e9ecef;
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
		
		.mcenter{
		border: 1px solid black;
		padding: inherit;
		}
		
		
		.textarea{
		border: 1px solid #89B8FF;
		width: 380px;
    	height: 90px;
		}
		#myPageQnA #sct_content{
		border: 1px solid #89B8FF;
    	height: 190px;
    	resize: none;
		}
		
		.del1{
		    border: 1px solid black;
		    background-color: white;
		    color: black;
		    width: 50px;
		    height: 30px;
		    cursor: pointer;
		}
		.h44{
		text-align: center;
		}
		
		#myPageQnA .pop1 label, #myPageQnA .pop1 input{
			display: inline-block;
		}	
		
		#myPageQnA .pop1 p{
			text-align: right;
			line-height: 35px;
		}
		
		
		.del2{
		text-align: center;
		}
		
		.del1:hover{
		    border: 1px solid #89B8FF;
		    background-color: #89B8FF;
		    color: white;
		    width: 50px;
		    height: 30px;
		    cursor: pointer;
		}
		
		.pop1{
		position: fixed;
		border: 1px solid #58ACFA;
		padding: 20px;
	    width: 510px;
	    height: 480px;
	  	z-index: 10;
	    display:none;
	    left:580px;
	    top:150px;
	    background-color: white;
	    border-radius: 10px 10px;
		}
		
		#btn{
			border: 3px solid #58ACFA;
			border-collapse: collapse;
			background-color: #5882FA;
			border-radius: 5px 5px;
			color:white;
			width: 70px;
			height: 35px;
		}
		
		#btn:hover{
			cursor: pointer;
			background-color: #AAB9FF;
		}
		
		#target_sub{
			cursor: pointer;
			color: #5882FA;
		}


	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

		<!---------------------==================== ?????? ===================----------------- -->

		<div class="pop1">
		<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <h5 class="h44">?????? ??????</h5>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-3">
            <p>???????????? :</p>
            
        </div>
        <br/>
        <div class="col-md-9">
        	<input type="hidden" name="dec_num"/>
            <input type="text" id="mem_id" name="dec_type" placeholder="????????????" class="form-control" readonly/>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-3">
            <p>???????????? :</p>
        </div>
        <br/>
        <div class="col-md-9">
            <input type="text" id="target_sub" placeholder="????????? ??????????????????" class="form-control" onclick="" readonly/>
        </div>
    </div><br/><hr/>
     <div class="row">
        <div class="col-md-12">
        	<textarea id="sct_content" class="form-control" readonly></textarea>
        </div>
    </div><br/>
    <div class="row">
        <div class="col-md-12 del2">
            <input id="btn" type="button" value="??????" onclick="chk()"/>
        </div>
    </div>
</div>
</div>

		
		
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
					<div id="selectedTab" class="col-md-2" onclick="location.href='managerSanctions'">
						<p>????????????</p>
					</div>
					<div class="col-md-2" onclick="location.href='managerMeetList'">
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
		
		<!-- ========================================????????? ??????========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-12">
						<h3 id="singo">????????????</h3>
						<hr/>
					</div>
				</div>
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>???????????????</p>
					</div>
					<div class="col-md-4">
						<p>????????????</p>
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
						<p>???????????????</p>
					</div>
					<div class="col-md-4">
						<p>????????????</p>
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
var currPage=1;
SanctionsListCall(currPage,10);

function SanctionsListCall(page,cnt) {
	
	$.ajax({
		type:'get',
		url:'SanctionsListCall',
		data:{'page':page,'cnt':cnt},
		dataType:'JSON',
		success : function(data) {
			
			/* console.log(data); */
			totalPage = data.pages;
			listDraw(data.list);
			
			$('#pagination').twbsPagination({
				startPage: currPage,//?????? ?????????
				totalPages: totalPage,//????????? ?????? ??? ????????? ???
				visiblePages:5, //[1][2][3]... ?????? ?????? ?????? ????????? ?????????
				onPageClick:function(evt,page){//?????? ????????? ????????? ??????????????? ????????? ??????
					/* console.log(evt); //?????? ???????????? ?????? ????????? ?????? ?????????
					console.log(page);//??? ???????????? ?????? ???????????? ?????? ?????? */
					SanctionsListCall(page, 10);
				}
			});
			
		},
		error: function(e) {
			console.log(e);
		}
	});
}


function listDraw(list){
	var content = '';		
	
	list.forEach(function(item, idx){
		var date = new Date(item.sct_date);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p>'+item.sct_admin+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.mem_id+'</p></div>';
		content += '<div class="col-md-4"><p>'+date.getFullYear()+"-"+("0"+(date.getMonth()+1)).slice(-2)+"-"+("0" + date.getDate()).slice(-2)+'</p></div>';
		content += '<div class="col-md-2"><p>'+'<button onclick="checkCont2(\''+item.mem_id+'\','+item.dec_type+','+item.dec_targetNum+',\''+item.sct_content+'\','+item.meet_num+')">[????????????]</button>'+'</p></div>';
		content += '<div class="col-md-2"><p>';
		if (item.sct_type == 0) {content += '??????';}
		if (item.sct_type == 1) {content += '??????';}
		content += '</p></div>';
		content += '</div>';		
		content += '<hr/>';	
	});
	$('#list').empty();
	$('#list').append(content);	
	
}

////////////////////////////////////////////////////////////////////////////////////////////////////////

function checkCont2(mem_id,dec_type,dec_targetNum,sct_content,meet_num) {
	$('#mem_id').val(mem_id);
	$('#sct_content').val(sct_content);
	$('.pop1').show();

	$.ajax({
		type:'post',
		url:'checkCont2',
		data:{'dec_targetNum':dec_targetNum,'dec_type':dec_type},
		dataType:'JSON',
		success: function(data){
			$('#target_sub').val(data.targetSub);						
			$('#target_sub').click(function() {
				if(data.targetSub !== null){
				location.href = 'meetDetail?meet_num='+dec_targetNum;
				}
			});			
		},
		error: function(e){
			console.log(e);
		}	
	});
}
document.getElementById('target_sub').innerText = "????????? ???????????????";
function chk() {
	$('.pop1').hide();
}




</script>

</html>