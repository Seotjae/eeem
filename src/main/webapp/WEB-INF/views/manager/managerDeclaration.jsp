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
		width: 440px;
    	height: 110px;
    	resize: none;
		}
		
		#dec_content{
		border: 1px solid #89B8FF;
		width: 440px;
    	height: 110px;
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
		
		#myPageQnA .pop1 p{
			text-align: right;
			line-height: 35px;
		}
		
		.pop1{
		position: fixed;
		border: 1px solid #58ACFA;
		padding: 20px;
	    width: 510px;
	    height: 610px;
	  	z-index: 10;
	    display:none;
	    left:580px;
	    top:100px;
	    background-color: white;
	    border-radius: 10px 10px;
		}
		
		#btn1{
			border: 3px solid #58ACFA;
			border-collapse: collapse;
			background-color: #5882FA;
			border-radius: 5px 5px;
			color:white;
			width: 70px;
			height: 35px;
			
		}
		
		#btn1:hover{
			cursor: pointer;
			background-color: #AAB9FF;
		}
		
		#btn2:hover{
			cursor: pointer;
			background-color: #AAB9FF;
		}
		
		#btn2{
			border: 1px solid #5882FA;
			border-collapse: collapse;
			background-color: white;
			border-radius: 5px 5px;
			color:#58ACFA;
			width: 70px;
			height: 35px;
		}
		
		#target_cont{
			cursor: pointer;
			color: #5882FA;
		}

	</style>
</head>
<body id="myPageQnA">
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<br/><br/><br/><br/><br/><br/>

		<!---------------------==================== ?????? ===================----------------- -->
		<form action="sct_regist" method="post">
		
		
		<div class="pop1">
		<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <h5 class="h44">????????????</h5>
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
            <input type="text" id="dec_targetId" name="mem_id" placeholder="????????????" class="form-control" readonly/>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-3">
            <p>???????????? :</p>
        </div>
        <br/>
        <div class="col-md-9">
            <input type="text" id="target_cont" placeholder="??????" class="form-control" readonly/>
        </div>
    </div>
    <br/>
     <div class="row">
        <div class="col-md-12">
			<textarea id="dec_content" placeholder="??????" class="form-control" readonly></textarea> 
        </div>
    </div>
    <br/><hr/>
    <div class="row">
        <div class="col-md-12">
            <h5>????????????</h5>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12">
            <label for="r1">??????</label><input type="radio" name="sct_type" id="r1" value="0" checked>&nbsp;&nbsp;
			<label for="r1">??????</label><input type="radio" name="sct_type" id="r1" value="1">&nbsp;&nbsp;
			<label for="r2">??????</label><input type="radio" name="sct_type" id="r2" value="2">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <textarea class="textarea" name="sct_content"></textarea>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12 del2">
            <input type="submit" id="btn1" value="??????" class="del1"/>
            <input type="button" id="btn2" value="??????" onclick="chk()"/>
        </div>
    </div>
</div>
</div>
		</form>


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
					<div id="selectedTab" class="col-md-2" onclick="location.href='managerDeclaration'">
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
						<p>?????????ID</p>
					</div>
					<div class="col-md-2">
						<p>????????????ID</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-1">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>?????????</p>
					</div>
					<div class="col-md-1">
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
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>?????????ID</p>
					</div>
					<div class="col-md-2">
						<p>????????????ID</p>
					</div>
					<div class="col-md-1">
						<p>????????????</p>
					</div>
					<div class="col-md-2">
						<p>????????????</p>
					</div>
					<div class="col-md-1">
						<p>?????????</p>
					</div>
					<div class="col-md-2">
						<p>??????</p>
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
				startPage: currPage,//?????? ?????????
				totalPages: totalPage,//????????? ?????? ??? ????????? ???
				visiblePages:5, //[1][2][3]... ?????? ?????? ?????? ????????? ?????????
				onPageClick:function(evt,page){//?????? ????????? ????????? ??????????????? ????????? ??????
					console.log(evt); //?????? ???????????? ?????? ????????? ?????? ?????????
					console.log(page);//??? ???????????? ?????? ???????????? ?????? ??????
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
	console.log('???????????????');
	var content = '';		
	
	list.forEach(function(item, idx){
		var date = new Date(item.dec_date);
	console.log(idx,item);
		content += '<div class="row" id="myTbody">';
		content += '<div class="col-md-2"><p>'+item.mem_id+'</p></div>';
		content += '<div class="col-md-2"><p>'+item.dec_targetId+'</p></div>';
		content += '<div class="col-md-2"><p>'+date.getFullYear()+"-"+("0"+(date.getMonth()+1)).slice(-2)+"-"+("0" + date.getDate()).slice(-2)+'</p></div>';
		content += '<div class="col-md-1"><p>'+'<button onclick="checkCont('+item.meet_num+',\''+item.dec_targetId+'\','+item.dec_type+','+item.dec_targetNum+','+item.dec_num+','+item.sct_type+',\''+item.dec_content+'\',\''+item.dec_admin+'\')">[????????????]</button>'+'</p></div>';
		
		content += '<div class="col-md-2"><p>'
		if(item.dec_admin == 'noData'){content +='-';}
		else{content += item.dec_admin}
		content += '</p></div>';
		
		///////////???????????? start/////////////
		content += '<div class="col-md-1"><p>'
		
		if(item.dec_state==0){content += '?????????';}
		if(item.dec_state==1){content += '????????????';}
		
		content += '</p></div>';
		//////////???????????? end //////////////
		
		/////////???????????? start //////////////
		content += '<div class="col-md-2"><p>'
		
		if(item.dec_state==1 && item.sct_type==0){content += '??????';}
		if(item.dec_state==1 && item.sct_type==2){content += '??????';}
		if(item.dec_state==0 ){content += '??????';}
		if(item.dec_state==1 && item.sct_type==1){content += '??????';}
		
		content += '</p></div>';
		///////////???????????? END/////////////////
		
		content += '</div>';		
		content += '<hr/>';	
	});
	//console.log(content);
	$('#list').empty();
	$('#list').append(content);	
	
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	$(document).ready(function(){
		  
	    // ??????????????? ????????? ????????? ??????
	    $("input:radio[name='sct_type']").click(function(){
	 
	        if($("input[name='sct_type']:checked").val() == 0 || $("input[name='sct_type']:checked").val() == 1){
	            $("textarea").attr("disabled",false);
	            // radio ????????? value ?????? 1????????? ?????????
	 
	        }else if($("input[name='sct_type']:checked").val() == 2){
	              $("textarea").attr("disabled",true);
	            // radio ????????? value ?????? 0????????? ????????????
	        }
	    });
	});
	
	
}

	////////////////////////////////////////////////////////////////////////////////////////////////////////
	
function checkCont(meet_num,dec_targetId,dec_type,dec_targetNum,dec_num,sct_type,dec_content,dec_admin) {
	console.log(meet_num,dec_targetId,dec_targetNum,dec_num,sct_type,dec_content,dec_type,dec_admin);
	console.log($('#dec_targetId'));
	$('#dec_targetId').val(dec_targetId);
	$('#dec_content').val(dec_content);
	$('input[name="dec_num"]').val(dec_num);
	$('.pop1').show();
	if (dec_admin != 'noData') {
		$('input[type="radio"]').attr('disabled','disabled');
		$('textarea').attr('disabled','disabled');
		$('#btn1').remove();
	}
	
	$.ajax({
		type:'post',
		url:'checkCont',
		data:{'dec_targetNum':dec_targetNum,'dec_type':dec_type},
		dataType:'JSON',
		success: function(data){
			console.log(data.target_cont);
			$('#target_cont').val(data.target_cont);
			$('#target_cont').click(function() {
				location.href = 'meetDetail?meet_num='+meet_num;
			});
		},
		error: function(e){
			console.log(e);
		}	
	});
}

function chk() {
	$('.pop1').hide();
}


</script>

</html>