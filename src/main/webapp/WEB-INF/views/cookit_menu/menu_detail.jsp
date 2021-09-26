<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Menu Detail Page</title>
		<c:import url="../temp/head.jsp"></c:import>
		
		<style>
			.content_wrapper{
				width: 1180px;
				min-height: 100%;
				margin: 0 auto;
			}
			
			/* 상단 큰 박스 */
			.top_info{
				width: 1180px;
				margin-top: 50px;
				display: flex;
				flex-direction: row;
			}
			
			.left_con{
				width: 600px;
				display: flex;
				flex-direction: column;
			}
			.right_con{
				width: 500px;
				display: flex;
				margin-left: 60px;
				padding-top: 50px;
				flex-direction: column;
			}
			
			/* left_con 영역 */
			.image_slide{
				display: flex;
				flex-direction: row;
				margin-top: 10px;
			}
			.image_slide div{
				width: 90px;
				height: 90px;
				margin-right: 10px;
				background-color: blue;
				opacity: 0.5; /* 임시 박스 이미지들어가는곳임 */
			}
			.image_slide::before{
				content: "<";
				font-size: 90px;
			}
			.image_slide::after{
				content: ">";
				font-size: 90px;
			} /* 버튼 수정해야함. */
			
			.etc_info{
				width: 100%;
				height: 80px;
				margin-top: 10px;
			}
			
			/* right_con 영역 */
			
			/* 메뉴 상품 이름 타이틀 */
			.title_info{
			}
			.sub_title{
				font-size: 30px;
				font-weight: 700;
			}
			.title{
				font-size: 30px;
				font-weight: 700;
				margin-top: 10px;
			}
			.prd_origin{
				font-size: 30px;
				font-weight: 300;
				margin-top: 10px;
			}
			
			/* 조리법 정보 */
			.prd_cookinfo{
				border-bottom: 1px solid #D5D5D5;
				margin-top: 30px;
				padding-bottom: 20px;
				font-size: 16px;
			}
			.prd_cookinfo span::after{
				content: "|";
				color: #D5D5D5;
				padding-left: 10px;
			}
			.prd_cookinfo span:last-child::after {
				content: "※";
			}
			
			/* 상품 가격 */
			.prd_price{
				border-bottom: 1px solid #D5D5D5;
				margin-top: 20px;
				padding-bottom: 20px;
				font-size: 20px;
				font-weight: 700;
			}
			
			/* 추후 추가할 배송 및 쿠폰등등 */
			.addme{
				height: 100px;
				border-bottom: 2px solid black;
			}
		</style>
	</head>
	<body>
		<div class="wrapper">
			<c:import url="../temp/header.jsp"></c:import>
			
			<div class="content_wrapper">
				<div class="top_info">
					<div class="left_con">
						<!-- 이미지 슬라이드 및 바뀔시 큰 이미지 들어가게 만들기 -->
						<div class="image_in">
							<img alt="in" src="./resources/images/image_in1.png">
						</div>
						<div class="imgSlider_wrap">
							<div class="image_slide">
								<div></div>
								<div></div>
								<div></div>
								<div></div>
								<div></div>
							</div>
						</div>
						<div class="etc_info">
							리뷰 및 레시피공유하는 박스
						</div>
					</div>
					<div class="right_con">
						<div class="title_info">
							<div class="sub_title">
								달콤 갈릭버터의 풍미와 통통새우🍤
							</div>
							<div class="title">
								* 갈릭버터쉬림프
							</div>
							<p class="prd_origin">원산지 : 상품참조</p>
						</div>
						<div class="prd_cookinfo">
							<span>3인분</span>
							<span>조리 20분</span>
							<span>준비 30분</span>
						</div>
						<div class="prd_price">
							판매가 : 26,800원
						</div>
						<div class="addme">
						</div>
						<div class="">
						</div>
					</div>
				</div>
			</div>
			
			<c:import url="../temp/footer.jsp"></c:import>
		</div>
	</body>
</html>