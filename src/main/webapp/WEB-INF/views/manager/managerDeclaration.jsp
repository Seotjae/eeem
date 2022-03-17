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
    
    <!-- =====페이징===================================================================================== -->
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  
	<script src="resources/paging/jquery.twbsPagination.js"></script>
	<!-- =====페이징===================================================================================== -->
    
    
	<style>
		#tab1{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
			font-size: 18px;
			color : white;
			padding-top: 10px;
		}
		#tab5{
			/*박스크기*/
			width: 150px;
			height: 50px;
			background-color: #7AD7BE;
			
			/*글자*/
			font-size: 18px;
			color : yellow;
			padding-top: 10px;
		}
		#tab2,#tab3,#tab4,#tab6{
			/*박스크기*/
			width: 150px;
			height: 50px;
			
			/*글자*/
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
		
		.textarea{
		border: 1px solid #89B8FF;
		width: 480px;
    	height: 90px;
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
		


	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

		<!---------------------==================== 팝업 ===================----------------- -->
		<form action="sct_regist" method="post">
		
		
		<div class="pop1">
		<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <h2 class="h44">신고내용</h2>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-2">
            <p>신고대상</p>
            
        </div>
        <br/>
        <div class="col-md-10">
        	<input type="hidden" name="dec_num"/>
            <input type="text" id="dec_targetId" name="mem_id" placeholder="신고대상" class="form-control" readonly/>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-2">
            <p>대상내용</p>
        </div>
        <br/>
        <div class="col-md-10">
            <input type="text" id="target_cont" placeholder="내용" class="form-control" readonly/>
        </div>
    </div>
     <div class="row">
        <div class="col-md-2">
            <p>신고내용</p>
        </div>
        <br/>
        <div class="col-md-10">
            <input type="text" id="dec_content" placeholder="내용" class="form-control" readonly/>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12">
            <h4>신고처리</h4>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12">
            <label for="r1">경고</label><input type="radio" name="sct_type" id="r1" value="0" checked>
			<label for="r1">정지</label><input type="radio" name="sct_type" id="r1" value="1">
			<label for="r2">없음</label><input type="radio" name="sct_type" id="r2" value="2">
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12">
            <textarea class="textarea" name="sct_content"></textarea>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12 del2">
            <input type="submit" value="확인" class="del1"/>
            <button class="del1">취소</button>
        </div>
    </div>
</div>
</div>
		</form>


	<div class="container-fluid" id="myPageQnAContainer">
		<!-- ========================================상단 탭========================================= -->
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<h1 class="manager">관리자 페이지</h1>
			</div>
		</div>
		<br/>
		<div class="row" >
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" id="tabBox">
					<div id="selectedTab" class="col-md-2" onclick="location.href='managerDeclaration'">
						<p>신고내역</p>
					</div>
					<div class="col-md-2" onclick="location.href='#'">
						<p>제재내역</p>
					</div>
					<div class="col-md-2" onclick="location.href='#'">
						<p>전체모임목록</p>
					</div>
					<div class="col-md-2" onclick="location.href='#'">
						<p>광고내역</p>
					</div>
					<div class="col-md-2" onclick="location.href='#'">
						<p>문의목록</p>
					</div>
					<div class="col-md-2" onclick="location.href='#'">
						<p>회원목록</p>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<br/><br/><br/><br/><br/><br/>
		
		<!-- ========================================페이지 내용========================================= -->
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row" >
					<div class="col-md-12">
						<h3 id="singo">신고내역</h3>
						<hr/>
					</div>
				</div>
				<div class="row" id="myThead">
					<div class="col-md-2">
						<p>신고자ID</p>
					</div>
					<div class="col-md-2">
						<p>신고대상ID</p>
					</div>
					<div class="col-md-2">
						<p>신고날짜</p>
					</div>
					<div class="col-md-1">
						<p>신고내용</p>
					</div>
					<div class="col-md-2">
						<p>처리자</p>
					</div>
					<div class="col-md-1">
						<p>처리상태</p>
					</div>
					<div class="col-md-2">
						<p>제재종류</p>
					</div>
				</div>
				<hr/>
					<!---------------- 테이블 바디 ---------------->
				<div id="list">
				<div class="row" id="myTbody">
					<div class="col-md-2">
						<p>신고내역</p>
					</div>
					<div class="col-md-2">
						<p>신고자ID</p>
					</div>
					<div class="col-md-2">
						<p>신고대상ID</p>
					</div>
					<div class="col-md-1">
						<p>신고날짜</p>
					</div>
					<div class="col-md-2">
						<p>신고내용</p>
					</div>
					<div class="col-md-1">
						<p>처리전</p>
					</div>
					<div class="col-md-2">
						<p>경고</p>
					</div>
				</div>
				</div>
				<hr/>
			</div>
			<div class="col-md-2">
			</div>
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
	
</body>
<script>
var currPage=1;
declarationListCall(currPage,10);

function declarationListCall(page,cnt) {
	
	$.ajax({
		type:'get',
		url:'declarationListCall',
		data:{'page':page,'cnt':cnt},
		dataType:'JSON',
		success : function(data) {
			
			console.log(data);
			totalPage = data.pages;
			listDraw(data.list);
			
			$('#pagination').twbsPagination({
				startPage: currPage,//현재 페이지
				totalPages: totalPage,//만들수 있는 총 페이지 수
				visiblePages:5, //[1][2][3]... 이걸 몇개 까지 보여줄 것인지
				onPageClick:function(evt,page){//해당 페이지 번호를 클릭했을때 일어날 일들
					console.log(evt); //현재 일어나는 클릭 이벤트 관련 정보들
					console.log(page);//몇 페이지를 클릭 했는지에 대한 정보
					declarationListCall(page, 10);
				}
			});
			
		},
		error: function(e) {
			console.log(e);
		}
	});
}


function listDraw(list){
	console.log('페이지내용');
	var content = '';		
	list.forEach(function(item, idx){
	console.log(idx,item);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p>'+item.mem_id+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.dec_targetId+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.dec_date+'</p></div>';
		content += '<div class="col-md-1"><p>'+'<button onclick="checkCont(\''+item.dec_targetId+'\','+item.dec_type+','+item.dec_targetNum+','+item.dec_num+','+item.sct_type+',\''+item.dec_content+'\')">[접수내용]</button>'+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.dec_admin+'</p></div>';
		
		///////////처리상태 start/////////////
		content += '<div class="col-md-1"><p>'
		
		if(item.dec_state==0){content += '처리전';}
		if(item.dec_state==1){content += '처리완료';}
		
		content += '</p></div>';
		//////////처리상태 end //////////////
		
		/////////제제종류 start //////////////
		content += '<div class="col-md-2"><p>'
		
		if(item.dec_state==1 && item.sct_type==0){content += '경고';}
		if(item.dec_state==1 && item.sct_type==2){content += '없음';}
		if(item.dec_state==0 ){content += '대기';}
		if(item.dec_state==1 && item.sct_type==1){content += '정지';}
		
		content += '</p></div>';
		///////////제제종류 END/////////////////
		
		content += '</div>';		
		content += '<hr/>';	
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);	
	
	
	$(document).ready(function(){
		  
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name='sct_type']").click(function(){
	 
	        if($("input[name='sct_type']:checked").val() == 0 || $("input[name='sct_type']:checked").val() == 1){
	            $("textarea").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name='sct_type']:checked").val() == 2){
	              $("textarea").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});
	
	
}



function checkCont(dec_targetId,dec_type,dec_targetNum,dec_num,sct_type,dec_content) {
	console.log(dec_targetId,dec_targetNum,dec_num,sct_type,dec_content,dec_type);
	console.log($('#dec_targetId'));
	$('#dec_targetId').val(dec_targetId);
	$('#dec_content').val(dec_content);
	$('input[name="dec_num"]').val(dec_num);
	$('.pop1').show();
	
	$.ajax({
		type:'post',
		url:'checkCont',
		data:{'dec_targetNum':dec_targetNum,'dec_type':dec_type},
		dataType:'JSON',
		success: function(data){
			console.log(data.target_cont);
			$('#target_cont').val(data.target_cont);

		},
		error: function(e){
			console.log(e);
		}
		
		
	});
}


</script>

</html>