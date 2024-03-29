<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/jquery.mobile-1.4.5.min.css" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.mobile-1.4.5.min.js"></script>

<!--  Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/join.css" rel="stylesheet">
<link href="css/backHeader.css" rel="stylesheet">

<script src="js/bootstrap.min.js"></script>
<script src="js/join.js"></script>
<script src="js/common/common.js"></script>
<script src="js/common/backHeader.js"></script>
<script src="js/deviceRender.js"></script>
</head>
<body>
	<div data-role="page" id="joinPage" class="eachPage render" data-render="padding-left,padding-right,padding-top">
		<div data-role="header" data-position="fixed" data-tap-toggle="false" id="backheader" class="render" data-render="height" data-render-ratio="height">
			<span id="backBtn" data-rel="back" class="render" data-render="width,height,left,background-size" data-render-ratio="height"></span>
			<span id="pageName" class="font-size-16 render" data-render="line-height,font-size" data-render-ratio="height">회원 가입</span>
			<span class="headerMargin render" data-render="height,border-top-width" data-render-ratio="height"></span>
			<div id="loadingDiv">
				<img src="img/ajax-loader.gif">
			</div>
		</div>
		
		<form id ="userInfoFrom" class="render" data-render="margin-top">
			<div id="input_box" class="render" data-render="padding-left,padding-right">
				<input type="text" id="input_id" name="userId" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="아이디 입력"/>
				<input type="password" id="input_pw" name="userPw" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="비밀번호 입력"/>
				<input type="password" id="input_pw_re" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="비밀번호 재 입력"/>
				<input type="number" id="tel1" name="phoneNumber" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="ex) 010"/>
				<input type="number" id="tel2" name="phoneNumber" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="ex) 1234"/>
				<input type="number" id="tel3" name="phoneNumber" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="ex) 1234"/>
				<!-- 			
				<img class="render" data-render="margin-bottom" style="width:100%;margin-bottom:14px;" src="img/mypage/captcha_sample.png">
				<input type="text" id="input_captcha" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="보안문자 입력"/>
				 -->
				 <div id="phoneRequestBtn" class="render" data-render="font-size,margin-bottom" onclick="smsAccess()">인증번호전송</div>
				<div style="position:relative; width: 100%; font-size: 11px;">
					<input id="confirmNum" type="number" style="display: inline-block; width: 70%" placeholder="인증번호입력">					
					<div id="phoneSuccessBtn" class="render" data-render="font-size,margin-bottom" onclick="smsConfirm()">확인</div>
				</div>
				<input type="email" id="email" class="font-size-11 render" data-render="height,font-size,margin-bottom" placeholder="이메일"/>
				
			</div>
		</form>
		
		<div class="panel-group render" id="accordion" data-render="margin-bottom">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title font-bold font-size-13 render" data-render="font-size,line-height">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
							웨딩 고객 추가 입력 정보 (선택)<i class="indicator glyphicon glyphicon-menu-right pull-right render" data-render="line-height"></i>
						</a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse">
					<div class="panel-body font-size-13 font-demilight render" data-render="font-size">
						<div class="dib mb10 render" data-render="margin-bottom,height,line-height">
							<p class="wedding_title font-size-13 render dib" data-render="width,font-size">예식일</p>
							<p class="wedding_content font-size-13 render dib fr" data-render="width,font-size">
								<input type="text" id="input_wedding_year" class="font-size-11 dib render" data-render="height,font-size,margin-bottom,width"/> 년
								<input type="text" id="input_wedding_month" class="font-size-11 dib render" data-render="height,font-size,margin-bottom,width,margin-left"/> 월
								<input type="text" id="input_wedding_day" class="font-size-11 dib render" data-render="height,font-size,margin-bottom,width,margin-left"/> 일
							</p>
						</div>
						<div class="dib mb10 render" data-render="margin-bottom,height,line-height">
							<p class="wedding_title font-size-13 render dib" data-render="width,font-size">신체타입</p>
							<p class="wedding_content font-size-13 render dib fr" data-render="width,font-size">
								<input type="text" id="input_wedding_body" class="font-size-11 dib render" data-render="height,font-size,margin-bottom,width,margin-left" placeholder="예) 하체통통" />
							</p>
						</div>
						<div class="dib mb10 render" data-render="margin-bottom,height,line-height">
							<p class="wedding_title font-size-13 render dib" data-render="width,font-size">헤어</p>
							<p class="wedding_content font-size-13 render dib fr" data-render="width,font-size">
								<input type="text" id="input_wedding_hair" class="font-size-11 dib render" data-render="height,font-size,margin-bottom,width,margin-left" placeholder="예) 긴 생머리" />
							</p>
						</div>
						<div class="dib mb10 render" data-render="margin-bottom,height,line-height">
							<p class="wedding_title font-size-13 render dib" data-render="width,font-size">드레스 타입</p>
							<p class="wedding_content font-size-13 render dib fr" data-render="width,font-size">
								<input type="text" id="input_wedding_dress" class="font-size-11 dib render" data-render="height,font-size,margin-bottom,width,margin-left" placeholder="예) 로맨틱" />
							</p>
						</div>
					</div>
					<div class="mb20 render" data-render="margin-bottom">
						<div class="render" data-render="font-size">기타 코맨트</div>
						<input type="text" id="input_wedding_etc" class="font-size-11 render" data-render="height,font-size,margin-top,width" placeholder="특이사항을 자유롭게 입력해 주세요" />
					</div>
				</div>
			</div>
		</div>
		
		<div id="policy" class="font-size-11 render" data-render="height,font-size,padding-right,padding-bottom,padding-left,border-width">
제 1 조 (목적)
	이 약관은 OOO이 제공하는 OOO 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (정의)
	이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
	①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 OOO 관련 제반 서비스를 의미합니다.
	②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
	③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
	④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
	⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
	⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
	⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
	
제 3 조 (약관의 게시와 개정)
	①"회사"는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
	②"회사"는 "약관의규제에관한법률", "정보통신망이용촉진및정보보호등에관한법률(이하 "정보통신망법")" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
	③"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 서비스내 전자우편, 전자쪽지, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.
	④회사가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.
	⑤회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다.
		</div>
		
		<div class="t-center mt40 mb40 font-size-13 render" data-render="margin-top,margin-bottom,font-size">
			<div class="agreeCheckBtn render" data-render="width,height"></div> 이용약관을 확인했습니다.
		</div>
		
		<div id="joinBtn" class="t-center font-size-13 render" data-render="height,margin-bottom,font-size,line-height">
			회원가입
		</div>
	
	</div>	
	<script>
		function toggleChevron(e) {
			$(e.target).prev('.panel-heading').find("i.indicator").toggleClass(
					'glyphicon-menu-down glyphicon-menu-right');
		}
		$('#accordion').on('hidden.bs.collapse', toggleChevron);
		$('#accordion').on('shown.bs.collapse', toggleChevron);
	</script>
</body>
</html>