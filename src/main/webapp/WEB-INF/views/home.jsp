<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Index</title>
		<meta charset="utf-8">
		<c:import url="./temp/head.jsp"></c:import>
		<style>
			#test{
				flex:1;
			}
			.content_wrapper{
				width: 1180px;
				height: 1000px;
				margin: 0 auto;
			}
			
			.title{
				width: 100%;
				height: 40px;
				margin-top: 60px;
			}
			.title h1{
				font-size: 40px;
				font-weight: 700;
			}
			.cate_wrap{
				width: 100%;
				height: 95px;
				border-bottom: 1px solid #e0e0e0;
			}
			.cate{
				width: 230px;
				height: 35px;
				margin-top: 40px;
				float: left;
			}
			.cate ul li{
				display: inline-block;
				margin-right: 15px;
			}
			.cate ul li:first-child{
				border-bottom: 2px solid black;
				padding-bottom: 4px;
			}
			.cate ul li a{
				font-size: 24px;
				color: black;
				text-decoration: none;
			}
			
			.filter_wrap{
				box-sizing: border-box;
				width: 100%;
				height: 120px;
				padding-top: 48px;
				position: relative;
			}
			.filter_wrap p:first-child{
				font-size: 28px;
				font-weight: 700;
			}
			.filter_wrap p{
				padding-top: 10px;
				font-size: 18px;
				font-weight: 700;
			}
			
			.sort_wrap{
				position: absolute;
				right: 0;
				bottom: 8px;
			}
			.sortc_wrap{
				display: inline-block;
			}
		</style>
	</head>
	<body>
		<div class="wrapper">
			<c:import url="./temp/header.jsp"></c:import>
			
			
			
			<!-- Width: 1180px, 한칸: width: 268px height: 548px-->
			<div class="content_wrapper">

				<div class="title">
					<h1>COOKIT 메뉴</h1>
				</div>
				<div class="cate_wrap">
					<div class="cate">
						<ul>
							<li><a href="#">배송일별</a></li>
							<li><a href="#">테마별</a></li>
						</ul>
					</div>
				</div>
				<div class="filter_wrap">
					<p>안녕하세요! COOKIT의 메뉴들 입니다.</p>
					<p>COOKIT의 주문마감은 오전 7시입니다.</p>
					<div class="sort_wrap">
						<div class="sortc_wrap">신메뉴순</div>
						<div class="sortc_wrap">인기메뉴순</div>
						<div class="sortc_wrap">높은가격순</div>
						<div class="sortc_wrap">낮은가격순</div>
						<div class="sortc_wrap">만족도순</div>
					</div>
				</div>
			
			</div>
			
			
			
			<c:import url="./temp/footer.jsp"></c:import>
		</div>
	</body>
</html>
