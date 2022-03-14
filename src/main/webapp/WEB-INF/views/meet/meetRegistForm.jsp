<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<html>
<head>
    <meta charset="UTF-8">
    <title>모임개설</title>
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
    

    <style>
        #csjMeetForm #thumUpload{
            width: 350px;
            height: 350px;
            border: 1px solid black;
            margin: 0 auto;
            display: flex;
            align-items: center;
            background-color: D0D9F0;
            cursor: pointer;
        }
        #thumImage{
        	max-height: 350px;
			max-width: 350px;
			margin: 0 auto;
            display: flex;
            align-items: center;
            cursor: pointer;
        }
        #csjMeetForm #thumUpload span{
        	display:block;
        	width:60px;
        	text-align: center;
        	margin: 0 auto;
        	font-weight: 600;
        }
        #csjMeetForm #bigSubject{
        	text-align: center;
        	font-size: 30px;
        }
        #csjMeetForm #smallSubject{
        	display: flex;
        	align-items: flex-end;
        }
       #csjMeetForm .txtCenter{
			font-size:20px;
			text-align: center;
       }
       #csjMeetForm .fstTxt{
			font-size: 15px;
			text-align: center;
			line-height: 2;
       }
       #csjMeetForm #regBox{
       	width: 110px;
       }
       #csjMeetForm select {
       height: 30px;
		border: 1px solid gray;
		border-radius: 5px;
		}
		#csjMeetForm #exampleInputAd{
			display: inline-block;
			
		}
		#csjMeetForm #radioBox{
			display: flex;
			align-items: center;
		}
		#csjMeetForm #radioBox div{	
			margin: 0;
			height: 60px;
		}
		#csjMeetForm #exampleInputContent{
		 height: 600px;
		 resize: none;
		}
		#csjMeetForm #contentBoxTxt{
			padding-left:12px;
			font-size: 15px;
		}
		#exampleInputThum, #exampleInputPhoto{
			display: none;
		}
		#fileUploadButton{
			width: 50px;
			height: 50px;
			cursor: pointer;
		}
		#MyAdTxt{
			color: red;
		}
		#csjMeetForm #photoBoxSize{
			max-width: 155px;
		}
		
		#csjMeetForm #photoSize{
			position: relative;
		}
	</style>
    
</head>    
<body id="csjMeetForm">
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">
	            </div>
	            <div class="col-md-3">
	            	<p id="bigSubject">개설하기</p>
	            </div>
	            <div class="col-md-2" id="smallSubject">
	            	<p >기본정보 (필수)</p>
	            </div>
			</div>
			<br/>
		    <form id="meetRegistForm" action="meetRegist" method="post" enctype="multipart/form-data">
	        <div class="row">
	            <div class="col-md-2">
	            </div>
	            <div class="col-md-3">
		            <label id="thumLabel" for="exampleInputThum">
		            	<img src="#" id="thumImage" style="display: none"/>
		                <div id="thumUpload">
		                    <span>썸네일<br/>사진등록<br/>클릭</span>
		                </div>
		            </label>
	                <input type="file" name="thum_file" id="exampleInputThum" accept="image/*"  >
	            </div>
	            <div class="col-md-5">
	            	<div class="row">
	            		<div class="col-md-2">
							<p class="fstTxt">지역</p>
	            		</div>
	            		<div class="col-md-3">	
			            	<select id="regBox" name="meet_region">
			            		<option value="none">지역</option>
			            		<option value="0">서울</option>
			            		<option value="1">경기</option>
			            		<option value="2">충청</option>
			            		<option value="3">강원</option>
			            		<option value="4">전라</option>
			            		<option value="5">경상</option>
			            		<option value="6">제주</option>
			            		<option value="7">온라인</option>
			            	</select>
			            </div>
			            <div class="col-md-2">	
			            	<p class="fstTxt">분야</p>
			            </div>
			            <div class="col-md-3">	
	  						<select name="meet_interest">
	  							<option value="none">분야</option>
			            		<option value="0">교육 / 강연</option>
			            		<option value="1">취미 / 소모임</option>
			            		<option value="2">문화 / 예술 / 방송</option>
			            		<option value="3">전시 / 박람회</option>
			            		<option value="4">스포츠 / 게임</option>
			            		<option value="5">패션 / 뷰티</option>
			            		<option value="6">기타</option>
			            	</select>
	            		</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">모임 제목<p>
		            	</div>
		            	<div class="col-md-8">
		            		<div class="form-group">
	                        	<input type="text" name="meet_subject" placeholder="모임제목을 입력해주세요" class="form-control" id="exampleInputSub"/>
	                    	</div>
		            	</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">연락처<p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="text" name="meet_phone" placeholder="ex) 01012341234" class="form-control" id="exampleInputPhn" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
	                    	</div>
		            	</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">모집 인원</p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="text" name="meet_totalPrs" placeholder="최대 인원" class="form-control" id="exampleInputPrs" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
	                    	</div>
		            	</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">모집 시작</p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="datetime-local" name="meet_gatherStart"  class="form-control" id="exampleInputGthSrt"  />
	                    	</div>
		            	</div>
		            	<div class="col-md-2">
		            		<p class="fstTxt">모집 종료</p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="datetime-local" name="meet_gatherEnd"  class="form-control" id="exampleInputGthEnd" />
	                    	</div>
		            	</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">모임 시작</p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="datetime-local" name="meet_start"  class="form-control" id="exampleInputSrt"  />
	                    	</div>
		            	</div>
		            	<div class="col-md-2">
		            		<p class="fstTxt">모임 종료</p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="datetime-local" name="meet_end"  class="form-control" id="exampleInputEnd" />
	                    	</div>
		            	</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">모임비</p>
		            	</div>
		            	<div class="col-md-4">
		            		<div class="form-group">
	                        	<input type="text" name="meet_point" placeholder="금액을 입력하세요" class="form-control" id="exampleInputPt" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
	                    	</div>
		            	</div>
	            	</div>
	            	<br/>
	            	<div class="row" >
		            	<div class="col-md-2">
		            		<p class="fstTxt">광고 여부</p>
		            	</div>
		            	<div class="col-md-2" id="radioBox">
		            		<div class="form-group">
	                        	<input type="radio" name="meet_adState" id="exampleInputAd" value="1"/>
	                        	&nbsp;&nbsp;예 
	                    	</div>
		            	</div>
		            	<div class="col-md-2" id="radioBox">
		            		<div class="form-group">
	                        	<input type="radio" name="meet_adState" id="exampleInputAd" value="0" checked="checked" />
	                        	&nbsp;&nbsp;아니오
	                    	</div>
		            	</div>
		            	<div class="col-md-6">
		            		<p id="MyAdTxt" style="visibility:hidden">
		            			*메인 광고는 모집기간 중 메인 페이지에 올라가며<br/> 신청 시 10만 포인트가 차감 됩니다.
		            		</p>
		            	</div>
	            	</div>
	            </div>
	            <div class="col-md-2">
	            </div>
	        </div>
	        <div class="row">
	        	<div class="col-md-2">
	        	</div>
	        	<div class="col-md-2">
	        		<p id="contentBoxTxt">상세정보 (필수)<p>
	        	</div>
	        </div>
	        <div class="row">
		        <div class="col-md-2">
		        </div>
		        <div class="col-md-8">
		        	<div class="form-group">
						<textarea placeholder="상세정보를 입력해주세요" name="meet_content"  id="exampleInputContent" rows="" cols="" class="form-control"></textarea>
					</div>
		        </div>
		        <div class="col-md-2">
		        </div>
	        </div>
	        <div class="row" id="photoBox">
		        <div class="col-md-2">
		        </div>
		        <div class="col-md-1">
		        	<label for="exampleInputPhoto">
		        		<a href="javascript:void(0)" onclick="$('#exampleInputPhoto').trigger('click');" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									첨부하기
						</a>
		        	</label>
		        	<input type="file" name="photos" id="exampleInputPhoto" multiple="multiple" accept="image/*" onchange="handleImgFileSelect(event)">
		        </div>

	        </div>
		    </form>
	        <br/>
	        <div class="row">
	        	<div class="col-md-5">
		        </div>
		        <div class="col-md-1">
		        	<input type="button" value="취소" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" />
		        	
		        </div>
		        <div class="col-md-1">
		        	<input type="button" value="모임개설" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" />
		        </div>
		        <div class="col-md-5">
		        </div>
	        </div>
			<br/><br/><br/><br/>
			<br/><br/><br/><br/>
	    </div>
</body>
<script>

//썸네일 미리보기
$(function() {
	    $("#exampleInputThum").on('change', function(){
	    	if (this.files && this.files[0]){
		    	if (!Array.prototype.slice.call(this.files)[0].type.match('image.*')) {
					alert('이미지 파일만 첨부 가능합니다.');
				}else{
			    	readURL(this);	
				}		
	    	}
	    });
});
function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$('#thumUpload').attr('style','display:none');
	        	$('#thumImage').attr('style','display:true');
	        	$('#thumImage').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	$(exampleInputAd).click(function() {
		if ($(this).val()==1) {
			$('#MyAdTxt').attr('style','visibility:visible');
		}else{
			$('#MyAdTxt').attr('style','visibility:hidden');
		}
});
	
	
//사진첨부 미리보기	
var img_files = [];
function handleImgFileSelect(e){
	
	var files = e.target.files;
	var fileArr = Array.prototype.slice.call(files);
	if (files.length<4) {
		var index = 0;
		fileArr.forEach(function(f){
			if(!f.type.match('image.*')){
				alert("이미지 파일만 첨부 가능합니다.");
				return;
			}
			if (img_files.length == 3) {
				img_files.splice(0,1);
				img_files.push(f);
				$('#photoBox').children().eq(2).remove();
			}else {
				img_files.push(f);	
			}
			var reader = new FileReader();
			reader.onload = function(e){
				var html = '<div class="col-md-1" id="photoBoxSize">';
				html += '<img src="'+e.target.result+'" style="max-width:150px;max-height:200px;" id="photoSize"/>';
				html += '</div>';
				$('#photoBox').append(html);
				index++;
			}
			reader.readAsDataURL(f);
		});
	}else{
		alert('사진은 최대 3개까지 가능합니다.');
	}
};


//유효성 검사
$('input[value="모임개설"]').click(function() {
	var $subject = $('#exampleInputSub').val();
	if($('#exampleInputThum').val() == ''){
		alert('썸네일 사진을 업로드해 주세요.');
	}/*else if ($('select[name="meet_region"] option:selected').val() == 'none') {
		alert('지역을 선택해 주세요.');
		$('select[name="meet_region"]').focus();
	}else if ($('select[name="meet_interest"] option:selected').val() == 'none') {
		alert('분야를 선택해 주세요.');
		$('select[name="meet_interest"]').focus();
	}else if ($subject == '' || $subject == ' ' || $subject == '  ' || $subject == '   '|| $subject == '    '|| $subject == '     '|| $subject == '      '|| $subject == '       '|| $subject == '        '|| $subject == '         '|| $subject == '          ') {
		alert('제목을 입력해주세요.');
		$('#exampleInputSub').focus();
	}else if ($('#exampleInputPhn').val() == '') {
		alert('연락처를 입력해주세요.');
		$('#exampleInputPhn').focus();
	}else if ($('input[name="meet_totalPrs"]').val() == '') {
		alert('모집 인원을 입력해주세요.');
		$('input[name="meet_totalPrs"]').focus();
	}else if ($('input[name="meet_gatherStart"]').val() == '') {
		alert('모집 시작을 정해주세요.');
		$('input[name="meet_gatherStart"]').focus();
	}else if ($('input[name="meet_gatherEnd"]').val() == '') {
		alert('모집 종료를 정해주세요.');
		$('input[name="meet_gatherEnd"]').focus();
	}else if ($('input[name="meet_start"]').val() == '') {
		alert('모임 시작을 정해주세요.');
		$('input[name="meet_start"]').focus();
	}else if ($('input[name="meet_end"]').val() == '') {
		alert('모임 종료를 정해주세요.');
		$('input[name="meet_end"]').focus();
	}else if ($('textarea').val() == '') {
		alert('상세정보를 입력해주세요.');
		$('textarea').focus();
	}*/
	else{
		if ($('input[name="meet_point"]').val()=='') {
			var result1 = confirm('모임비가 없습니다.\n무료모임으로 등록됩니다.');
			if (result1) {
				if ($('input[name="meet_adState"]:checked').val() == 1) {
					var result2 = confirm('광고를 선택하셨습니다.\n확인을 누르면 광고가 등록되고 10만 포인트가 차감됩니다.');
					if (result2) {
						alert('모임이 개설되었습니다.');
						$('#meetRegistForm').submit();
					}else{
						alert('개설이 취소되었습니다.');
					}
				}else{
					alert('모임이 개설되었습니다.');
					$('#meetRegistForm').submit();
				}
			}else {
				alert('개설이 취소되었습니다.');
			}
		}else{
			alert('모임이 개설되었습니다.');
			$('#meetRegistForm').submit();
		}
	}
});

	

</script>
</html>