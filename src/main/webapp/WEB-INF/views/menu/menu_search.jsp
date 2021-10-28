<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Menu Search</title>
		<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/css/menu/menu_search.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<style>		
			.wrapper{
				position:relative;
				width:100%;
			}
			#container{
				width:1180px;
				min-height:100%;
				margin: 0 auto;
			}
		</style>
	</head>
	<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
		
	<div class="wrapper">		
	<!-- 여기에 페이지 작업 -->
		<section id="container">
			<div id="container_title" class="hide" tabindex="-1">본문 시작</div>

			<!-- content -->
			<style>
				.highlight{
					color: #008A00;background-color: white;font-weight: bold;
				}
			</style>
			<script type="text/javascript" src="//www.cjcookit.com/pc/js/jquery/jquery.highlight.js"></script>
			<section id="container">
					<div id="container_title" class="hide" tabindex="-1">본문 시작</div>
					<!-- content -->
					<div id="content" class="pd_wrap pd_mu_wrap">
						<div class="olki_list_wrap">
							<div class="top_sec">
								<h2>메뉴찾기</h2>
			                </div>
			                
			                <!-- 통합 검색 -->
			                <div class="box_mu_search">
								<div class="sch_wrap">
									<div class="input_wrap sch_area ui_inputfield">
										<label for="fn_txt_srch" class="hide">검색어 입력</label>
										<input type="text" class="txt" name="keyWord" id="fn_txt_srch" placeholder="메뉴명으로 검색해 주세요." value="" required="">
										<button class="ico del"><span class="hide">입력 삭제</span></button>
										<button type="button" class="btn btn_srch"><span class="hide">검색</span></button>
									</div>
								</div>
								<p class="desc">COOKIT의 모든 메뉴를 쉽고 빠르게 찾아볼 수 있습니다.<br>판매 중단된 메뉴는 <strong>재판매 알림</strong>을 신청하세요! 재판매시 알림을 드립니다.</p>
			                </div>
			
			                <div class="top_sub_sec">
			                    <h3>판매중</h3>
			                </div>
			                <!-- Menu Grid -->
							<div id="menus_wrap">
								
								<c:if test="${empty prd_sale}">
									<div class="no_item">
										<div class="no_itemIcon"></div>
										<div class="no_itemTxt">
											등록된 메뉴가 없습니다.
										</div>
									</div>
								</c:if>
								
								<div id="item_wrap">
									<!-- 나중에 c:foreach 반복문 쓰기 -->
									
									
									<c:forEach items="${prd_sale}" var="prd_s">
										<div class="item_box">
											<div class="click_menu"> <!-- div 버튼 만들기 -->
												<input type="hidden" value="${prd_s.product_id}" id="product_id">
												<div class="item_image">
													<img alt="test" src="../resources/upload/menu/main/${prd_s.product_id}/${prd_s.product_name}.jpg">
												</div>
												<p class="etc_info">${prd_s.product_recipe}</p>
												<div class="item_title">
													*${prd_s.product_name}
												</div>
												<div class="item_price">
													<fmt:formatNumber value="${prd_s.product_price}" type="number" maxFractionDigits="3"/>원
												</div>
												<div class="item_review">
													<ul>
														<li></li>
														<li>리뷰 4,000</li>
													</ul>
												</div>
											</div>
									<!-- 		<div class="item_btnbox">
												<div class="menu_btn zzim_btn">
												
												</div>
												<div class="menu_btn cart_btn">

												</div>
											</div> -->
										</div>
										<!-- c:foreach -->
									</c:forEach>	
								</div>
								<div class="pager_wrap">
									<ul class="pager">
									
										<li class="pager_item" data-type-page="sale">
									      <a class="page-link" href="./menu_search?pn=${pager.startNum - 1}" aria-label="Previous">
									        <span aria-hidden="true">&lt;</span>
									      </a>
									    </li>
									    
									    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
									    	<li class="pager_item" data-type-page="sale">
									    		<a class="page-link" href="./menu_search?pn=${n}">${n}</a>
									    	</li>
									    </c:forEach>
									    
									   	<li class="pager_item">
									      <a class="page-link" href="./menu_search?pn=${pager.lastNum + 1}" aria-label="Next">
									        <span aria-hidden="true">&gt;</span>
									      </a>
									    </li>
									    
									</ul>
								</div>
							</div>	
			                <div class="top_sub_sec">
			                    <h3>판매종료</h3>
			                </div>
			                <!-- 리스트 -->
			                <div class="olki_list"> 
			                    <div id="menus_wrap">
			                    
			                    	<c:if test="${empty prd_end_sale}">
										<div class="no_item">
											<div class="no_itemIcon"></div>
											<div class="no_itemTxt">
												등록된 메뉴가 없습니다.
											</div>
										</div>
									</c:if>
									
									<div id="item_wrap2">
										<!-- 나중에 c:foreach 반복문 쓰기 -->
										
										
										<c:forEach items="${prd_end_sale}" var="prd_es">
											<div class="item_box">
												<div class="click_menu_soldout"> <!-- div 버튼 만들기 -->
													<input type="hidden" value="${prd_es.product_id}" id="product_id">
													
													<div class="item_image">
														<div class="soldout_txt">품절</div>
														<img alt="test" src="../resources/upload/menu/main/${prd_es.product_id}/${prd_es.product_name}.jpg">
													</div>
													
													<p class="etc_info">${prd_es.product_recipe}</p>
													
													<div class="item_title">
														*${prd_es.product_name}
													</div>
													
													<div class="item_price">
														<fmt:formatNumber value="${prd_es.product_price}" type="number" maxFractionDigits="3"/>원
													</div>
													
													<div class="item_review">
														<ul>
															<li></li>
															<li>리뷰 4,000</li>
														</ul>
													</div>
													
												</div>
												
										<!-- 		<div class="item_btnbox">
													<div class="menu_btn zzim_btn">
													
													</div>
													<div class="menu_btn cart_btn">
					
													</div>
												</div> -->
												
											</div>
								<!-- c:foreach -->
								</c:forEach>	
									</div>
								<div class="pager_wrap">
									<ul class="pager">
									
										<li class="pager_item" data-type-page="sale">
									      <a class="page-link" href="./menu_search?pn=${pager.startNum - 1}" aria-label="Previous">
									        <span aria-hidden="true">&lt;</span>
									      </a>
									    </li>
									    
									    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
									    	<li class="pager_item" data-type-page="sale">
									    		<a class="page-link" href="./menu_search?pn=${n}">${n}</a>
									    	</li>
									    </c:forEach>
									    
									   	<li class="pager_item">
									      <a class="page-link" href="./menu_search?pn=${pager.lastNum + 1}" aria-label="Next">
									        <span aria-hidden="true">&gt;</span>
									      </a>
									    </li>
									    
									</ul>
								</div>
							</div>	
								<!-- 페이징 -->
								<div class="pagination" id="paging2"></div>
								
			                </div>
			                
							<!-- //리스트 -->
			
						</div>
					</div>
					<!-- //content -->
				</section>
			
			<!-- //content -->
		</section>
		
		<!-- 여기까지 -->
		<div class="push"></div>
		</div>
		<c:import url="../temp/boot_footer.jsp"></c:import>
		<script src="../resources/js/menu/menu_js.js"></script>
	</body>
</html>