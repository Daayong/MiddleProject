<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		
		.wrapper{
		min-height:100%;
		width:1900px;  
		margin-top:116px; 
		margin-bottom:-290px;
		position:relative; 
		left:50%;
		transform:translate(-50%);
		/*영역 확인용 색상 작업 완료시 삭제*/
/* 		background-color:gray; */
	
	
		}

		.section{
			width:1190px; 
			min-height:100%; 
			margin:0 auto; 
		/*영역 확인용 색상 작업완료시 삭제*/
/* 			background-color:ivory; */
		}

		.push{
		height:290px;		
		}
		
/* 		<개인 작업 내용 */
		
		body{background: url(/mp/resources/images/bg_rv_wrapper.png) repeat-x 0 977px;}

		.hide {display: inline-block;position:absolute;z-index:-10;width:0 !important;height:0 !important;overflow:hidden !important;font-size:medium;line-height:normal;word-break:break-all}
		
		h2{padding-bottom: 36px;color: #101010;font-size: 40px;line-height: 56px;font-weight: 700;border-bottom: 4px solid #202020;}

		#content{min-height: 900px;padding-bottom: 140px;padding-top: 52px;}
		.best_review{box-sizing:border-box;height:628px;padding:48px 0 0;}
		
		.family_review{padding:60px 0 46px;background:#f7f7f7;margin-top:85px;overflow:hidden;}
		
		.taste_review{padding-top:80px;}
		.box_srch{position: relative; box-sizing: border-box; width: 1190px; height: 133px; padding: 32px; border-top: 1px solid #202020;  background-color:#f7f7f7;}
		.srch_wrap{position:relative; z-index:30; width:644px; margin:0 auto;}
		.srch_wrap .txt{display: block; width:644px; height:68px; padding:0 106px 0 20px; border:2px solid #202020; color:#101010; font-weight:700; font-size:20px; opacity:1;}
		.srch_wrap .btn_srch{position: absolute; border:0; right:18px; top:50%; width:32px; height:32px; margin-top:-16px; background:url(/mp/resources/images/ico_set.png) -167px -94px no-repeat; background-size:1050px 1050px;}
		
/* 		개인 작업 내용> */
	</style>	
	
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>




<div class="wrapper">		
<!-- 여기에 페이지 작업 -->
<!-- wrapper는 width:1900px 영역이므로 메인페이지 및 소개 페이지에서 슬라이드 이미지 작업시의 영역크기(gray색상) -->	
	
	
	<div class="section">
	<!-- section은 width:1190px로, 모든 컨텐츠 작업 영역(ivory색상) -->
		<div id="content">
			<div class="review_wrap">
				<h2>리뷰</h2>
				
				<div class="best_review">
					<div class="ui_carousel_track ui_static" style="opacity: 1; width: 25000px; transform: translate3d(-568px, 0px, 0px);">
						<div class="slide_conts ui_carousel_slide ui_carousel_cloned" data-ui_carousel_index="-1" style="float: left;" aria-hidden="true">
						</div>
					</div>
				</div>
				
				<div class="family_review">
				</div>
				
				<div class="taste_review">
					<div class="box_srch">
						<div class="srch_wrap">
							<input type="text" class="txt" name="searchText" placeholder="검색어를 입력해주세요" onkeyup="if(event.keyCode=='13'){search();}">
							<button class="hide" type="button"><span class="hide">입력 삭제</span></button>
							<button type="button" class="btn_srch" onclick="search()"><span class="hide">검색</span></button>
						</div>
					</div>
				</div>
				
				<div class="">
				</div>
			</div>
		</div>









	</div>



<!-- 여기까지 -->
<div class="push"></div>
</div>
 <c:import url="../temp/boot_footer.jsp"></c:import>

</body>
</html>