 <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	
	
	<title>Home</title>
	
	
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
	
	<style>		
		.wrapper{
			position:relative;
			width:100%;
		}

		#container{
			width:1180px;
			min-height:100%;
			margin:-117 auto -290;
			padding: 117 0 290;
		}
	</style>
	
</head>
<body>
<div class="wrapper">
	<c:import url="./temp/boot_nav.jsp"></c:import>	
	
	<!-- HTML_GEN_APPLY_PAGE -->

		<!-- content -->
		<div id="content">
            <div class="main_wrap">

				








<!-- mainBillboard Start -->
				
        <!-- billboard -->
         <div class="ma_billboard">
             <div class="list_slide ui_carousel">
                 <!-- indigator -->
                 <div class="indigator_pos" style="display:none;">
                     <div class="indigator silde_arrow_wrap"> <!-- 스크립트요청사항 : 검정색 버전 .black 클래스 추가, 하얀색 버젼 .white 클래스 추가 20210407 삭제 -->
                         <button class="prev ui_carousel_prev ui_carousel_arrow"><span class="hide">상품 이전보기</span></button>
                         <!-- 페이징, 버튼-->
                         <div class="control_box">
                             <span class="count_wrap">
                                 <span class="num"><em>1</em><span class="dash">/</span>3</span>
                                 <span class="hide">총 페이지 3 페이지 중 현재 1번째 페이지</span>
                             </span>
                             <button type="button" class="btn_control pause"><span class="hide">일시정지</span></button>
                             <!-- play 버튼으로 변경시 class play 추가 -->
                         </div>
                         <!-- 페이징, 버튼-->
                         <button class="next ui_carousel_next ui_carousel_arrow"><span class="hide">상품 다음보기</span></button>
                     </div>
                 </div>
                 
		<!-- list -->
                 <div class="prod_list ui_carousel_list">
                     <ul class="ui_carousel_track">
                     				
                         <li class="slide_conts black">
                             <!-- 기타 케이스 -->
                             <div class="pro_module">
                             
    									<a href="https://www.cjcookit.com/pc/event/planView?plnId=103239&wid1=bnr_bn1" target="_self" class="vr_link">
                            	        <span class="hide">10월 구매왕 캠핑용품 증정!쿡킷이 준비한 선물과<br>가을 캠핑 떠나세요!</span>
                              </a>
                              
                                 <div class="img_wrap">
                                     <a href="https://www.cjcookit.com/pc/event/planView?plnId=103239&wid1=bnr_bn1" target="_self" class="conts">
                                         <img src="//img.cjcookit.com/images/file/display/245/20211008133930757.jpg?RS=1920x640" alt="," onerror="cj.com.noImg(this)">
                                     </a>
                                 </div>
                                 
                                 <div class="txt_position">
                                     <div class="txt_wrap">		                                                
                                         <a href="https://www.cjcookit.com/pc/event/planView?plnId=103239&wid1=bnr_bn1" target="_self" class="conts">
                                             
                                             	<div class="prd_flag_wrap">		
								<span class="flag">이벤트 오픈</span>
						</div>										

                                             <div class="tit_info">
                                                 <span class="sub_tit st_elps">쿡킷이 준비한 선물과<br>가을 캠핑 떠나세요!</span>
                                                 <span class="sub_discription_evt st_elps">10월 구매왕 캠핑용품 증정!</span>		                                                        
                                             </div>
                                         </a>
                                     </div>
                                 </div>
                             </div>
                             <!-- //기타 케이스 -->
                         </li>
                         
                     </ul>
                 </div>
             </div>
         </div>
<!-- mainBillboard End -->
	
	<div class="row_grid">
          <!-- 배송 로그인 전/구매이력이 없을 경우 -->
          <div class="ma_no_delivery mbrOrderNoDataArea">
              <a href="#">
                  <strong>우리집도 COOKIT 배송이 되나요?</strong>
                  <p>배송이 가능한지 알려드려요.</p>
                  <span class="link_map"><span>배송지 검색</span></span>
              </a>
          </div>

          <!-- 배송 : 로그인 후 구매이력이 있는 경우 -->
          <div class="ma_delivery mbrOrderListArea" style="display:none;">
              <div class="login_delivery"></div>
          </div>

          <!-- 쿠폰 발급이 안된 케이스 -->
          <div class="ma_no_coupon mbrCpnNoDataArea">
              <a href="javascript:void(0);">
                  <strong>1월 1일(월)에 받을 수 있어요</strong>
                  <p>오전 7시까지 주문하시면 다음날 배송됩니다.</p>

                  <span class="link_time"><span>00:00:00</span>남은시간</span>
              </a>
          </div>

          <!-- 쿠폰 발급된 케이스 -->
          <div class="ma_coupon mbrCpnListArea" style="display:none;">
              <div class="coupon_wrap">
                  <div class="list_slide ui_carousel">
                      <!-- indigator -->
                      <div class="indigator silde_arrow_wrap">
                          <button class="prev ui_carousel_prev ui_carousel_arrow" style="display: inline-block;"><span class="hide">쿠폰 이전보기</span></button>
                          <span class="count_wrap">
                              <span class="num"><em>1</em>/3</span>
                              <span class="hide">총 페이지 3 페이지 중 현재 1번째 페이지</span>
                          </span>
                          <button class="next ui_carousel_next ui_carousel_arrow" style="display: inline-block;"><span class="hide">쿠폰 다음보기</span></button>
                      </div>

                      <!-- list -->
                      <div class="coupon_list ui_carousel_list">
                          <ul class="ui_carousel_track dataListArea">
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
		
<!-- 추천상품 -->
    <div class="ma_individ">
        <div class="individ">
            <dl>
                <dt class="dt">
                    <div class="major">
                        <div class="row personProdCase2" style="display:none;">나는</div>
                        	<div class="row">
                             	<div class="sl_taste">
                             	
									<button type="button" class="sl_hd"><strong>매콤한맛</strong></button> <!-- 스크립트요청사항 : 클릭하면 .sl_taste 에 .on 클래스 추가 -->
									
	                                <div class="lay_sl">
									
										<a href="#recom_010" flvrTstCd="010"  onclick="changeRecom();" ><span>매콤한맛</span></a>
										
										<a href="#recom_020" flvrTstCd="020"  onclick="changeRecom();" ><span>단맛</span></a>
										
										<a href="#recom_030" flvrTstCd="030"  onclick="changeRecom();" ><span>짭짤한맛</span></a>
										
										<a href="#recom_040" flvrTstCd="040"  onclick="changeRecom();" ><span>새콤한맛</span></a>
										
										<a href="#recom_050" flvrTstCd="050"  onclick="changeRecom();" ><span>느끼한맛</span></a>
										
										<a href="#recom_060" flvrTstCd="060"  onclick="changeRecom();" ><span>담백한맛</span></a>
										
										<a href="#recom_070" flvrTstCd="070"  onclick="changeRecom();" ><span>이국적인맛</span></a>
										
										<a href="#recom_080" flvrTstCd="080"  onclick="changeRecom();" ><span>얼큰한맛</span></a>

                                	</div>
                            	</div>
                            	<span class="personProdCase2" style="display:none;">을</span>
                       		</div>
                        <div class="row personProdCase2" style="display:none;">좋아합니다.</div>
                        <div class="row personProdCase1 personProdCase3" style="display:none;">메뉴</div>
                        <div class="row personProdCase1 personProdCase3" style="display:none;">추천드려요</div>
                    </div>
                    
                    <p class="desc personProdCase1" style="display:none;">
                        <a href="javascript:cj.login();" class="link_txt_green">로그인</a>하시면 고객님의 구매내역과<br>
                        맛취향에 따라 딱맞는 맛있는 메뉴를 추천드려요
                    </p>

                    <p class="desc personProdCase2" style="display:none;">
                        <span class="name"></span>의 구매 내역과 <a href="/pc/myAct/myFlvrInfo" class="link_txt_green">맛취향</a>에 따라<br>
                        맛있는 메뉴를 추천드려요
                    </p>

                    <p class="desc personProdCase3" style="display:none;">
                        <span class="name"></span>의 맛취향을 등록해주세요<br>
                        <a href="/pc/myAct/myFlvrInfo" class="link_txt_green">맛취향 등록하러 가기</a>
                    </p>
                    
                    <!-- dim -->
                    
                    <span class="dim_le_ma_wrap"><span></span></span>
                    
                    <!-- indigator -->
                    
                    <div class="indigator silde_arrow_wrap">
                     	<button class="prev ui_carousel_prev ui_carousel_arrow" style="display: inline-block;"><span class="hide">추천메뉴 이전보기</span></button>
                     	
                     	<span class="count_wrap">
                       		<span class="num"><em>1</em>/3</span>
                         	<span class="hide">총 페이지 3 페이지 중 현재 1번째 페이지</span>
                     	</span>
                     	
                     	<button class="next ui_carousel_next ui_carousel_arrow" style="display: inline-block;"><span class="hide">추천메뉴 다음보기</span></button>
                    </div>

                   </dt>
                   <dd class="dd" id="personProdArea">
                       
			 		<div id="recom_010" class="list_recom">
	                    <div class="list_slide ui_carousel">
	                        <div class="prod_list ui_carousel_list">
	                            <ul class="ui_carousel_track">
	                             	
	                                  <li class="slide_conts">
	                                      <div class="pro_module">
	                                          <div class="img_wrap">
	                                              <a href="/pc/prod/prodDetail?prdCd=40092911&wid1=recommand_d1_bn1" class="conts">			                                                                
	                                                  <img src="//www.cjcookit.com/cjkit/web/images/common/no_img_268x320.png" data-image_src="//img.cjcookit.com/images/file/product/623/20210901132409761.png?RS=520x520" alt="눈꽃치즈닭갈비" onerror="cj.com.noImg(this)">
	                                              </a>
	                                          </div>
	                                          <div class="txt_wrap">
	                                              <a href="/pc/prod/prodDetail?prdCd=40092911&wid1=recommand_d1_bn1" class="conts">
	
	                                                  <div class="tit_info">
	                                                      <span class="tit mt_elps">눈꽃치즈닭갈비</span>
	                                                  </div>
	
	                                          <!-- 190625_수정(구조변경/링크영역,가격,버튼소스이동) -->
	                                           </a>
	                                           <div class="price_info">
	                                               <p class="sale">
	                                                   <span class="price">26,800<span class="won">원</span></span>
	                                               </p>
	                                               
	                                    <p class="servings">
	                                        / 3인분
	                                    </p>
	                                   
	                                               <div class="act_btn_wrap">
	
										<button type="button" class="btn btn_cart" onclick="cj.cart.addDlvDt('40092911', '')"><span class="hide">장바구니 담기</span></button>
	
	                                               </div>
	                                           </div>
	                                       </div>
	                                   </div>
	                               </li>
	                               
	                          	</ul>
	                      	</div>
	                    </div>
                    </div>
                </dd>
            </dl>
        </div>

        <!-- dim -->
        <span class="dim_ma_wrap"><span></span></span>
     
    </div>
    
    <!-- 이벤트 -->
                
     <div class="ma_event">
         <div class="ev_ma_wrap">
             <div class="list_slide ui_carousel">

             	
                  <!-- 190607_수정 -->
                 	<!-- indigator -->
                  <div class="indigator_pos">
                      <div class="indigator_cont">
                          <div class="indigator silde_arrow_wrap">
                              <button class="prev ui_carousel_prev ui_carousel_arrow" style="display: inline-block;"><span class="hide">이벤트 이전보기</span></button>
                              <button class="next ui_carousel_next ui_carousel_arrow" style="display: inline-block;"><span class="hide">이벤트 다음보기</span></button>
                          </div>

                          <div class="indi_wrap">
                              <ul class="indi_conts ui_carousel_dots">
                                  <li class="on">
                                      <button type="button" class="btn_indi">
                                          <span class="hide">1번 이벤트 보기<span data-bind-text="선택됨"></span></span>
                                      </button>
                                  </li>
                                  <li>
                                      <button type="button" class="btn_indi"><span class="hide">2번 이벤트 보기</span>
                                      </button>
                                  </li>
                                  <li>
                                      <button type="button" class="btn_indi"><span class="hide">3번 이벤트 보기</span>
                                      </button>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
                  <!-- //190607_수정 -->
                  

                  <div class="list_ev ui_carousel_list">
                      <ul class="ui_carousel_track">

						<li class="white slide_conts"> <!-- 개발요청사항 : 검정색 버전 .black 클래스 추가, 하얀색 버젼 .white 클래스 추가 -->
                             <a href="https://www.cjcookit.com/pc/event/planView?plnId=103240&wid1=event_bn1" target="_self" class="bann"><img src="//img.cjcookit.com/images/file/display/354/20211001174859688.jpg?RS=1920x280" alt="" onerror="cj.com.noImg(this)"></a>
                        </li>		
                          			
                     </ul>
                 </div>
             </div>
         </div>
     </div>
				


   <!-- 베스트 -->
   
    <div class="ma_best">
        <div class="sec_tit">
            <h2 class="tit">실시간 베스트</h2>
        </div>
        <div class="prod_list">
            <ul>
            	
                 <li>
                     <div class="pro_module">
                         <div class="img_wrap">
                             <a href="/pc/prod/prodDetail?prdCd=40092906&wid1=best_prd_bn1&plnId=300009" class="conts">
                                 <img src="//img.cjcookit.com/images/file/product/902/20210831153432886.jpg?RS=366x366" alt="해신탕" onerror="cj.com.noImg(this)">

                                 		<span class="flag_num best"><span>BEST</span> 01</span>

                             </a>
                         </div>
                         <div class="txt_wrap">
                             <a href="/pc/prod/prodDetail?prdCd=40092906&wid1=best_prd_bn1&plnId=300009" class="conts">		                                        

            
	               <div class="prd_flag_wrap">
	               		<span class='flag'>무료배송</span>
	               </div>

                                 <div class="tit_info">
                                     <span class="tit mt_elps">해신탕</span>
                                 </div>
                                 <div class="price_info">
                                     <p class="sale">
                                         <span class="price">45,800</span><span class="won">원</span></span>
                                     </p>
                                     
                                      <p class="servings">
                                          / 4인분
                                      </p>
                                     
                                 </div>
                             </a>
                         </div>
                         <div class="act_btn_wrap">

						<button type="button" class="btn btn_cart" onclick="cj.cart.addDlvDt('40092906', '', '300009')"><span class="hide">장바구니 담기</span></button>

                         </div>
                     </div>
                 </li>
            </ul>
        </div>
    </div>
	
 	<!-- 2110_월간 쿡킷패밀리 10월호 영역  : S -->
        <div class="ma_magazine">
            <div class="sec_cont">
                <a  href="/pc/magazine/magazine"  class="link_ban">
                    <span class="img_wrap"><img src="/cjkit/web/images/magazine/2021/10/img_magazine2021_10.jpg" alt="" /></span>
                    <div class="txt_cont">
                        <dl>
                            <dt><span class="ico">Vol.10</span> 글램핑하기 좋은 날</dt>
                            <dd>도심에서 조금만 벗어나도 새로운 에너지를 느낄 수<br>
                                있는 글램핑, 오늘도 여유를 충전하러 이동합니다. <br>
                            <strong>웹 매거진 내 추천 메뉴 <em>5% 중복 쿠폰</em> 증정</strong></dd>
                        </dl>

                        <ul class="col_02 re_height">
                            <li><span class="thumb"><img src="/cjkit/web/images/magazine/2021/10/thumb_magazine202110_01.jpg" alt="" /></span><span class="desc"><strong>랜선시식 #19</strong>작가 이채빈 님의<br> 만족도 200% 글램핑 여행</span></li>
                            <li><span class="thumb"><img src="/cjkit/web/images/magazine/2021/10/thumb_magazine202110_02.jpg" alt="" /></span><span class="desc"><strong>랜선시식 #20</strong>한 달에 열 번 이상 차박캠핑!<br>유튜버 무카님의 이야기 </span></li>
                        </ul>
                    </div>
                </a>
            </div>                  
        </div>
    <!-- // 2110_월간 쿡킷패밀리 10월호 영역  : E -->	
	
	
	<!-- 리뷰 -->
	
	
	<!-- 공지사항 -->
    <div class="ma_notice">
        <div class="not_m_wrap">
        	
             <a href="/pc/cs/noticeView?ntcSeq=3793&wid1=notice">
                 <dl>
                     <dt>공지사항</dt>
						<!-- <dd class="date"><time>2018-01-01</time></dd> -->
                    	<dd class="txt"><p class="st_elps">쿡킷 이메일 시스템 점검 안내[10.16(토) 23:00~10.17(일) 06:00]</p></dd>
                 </dl>
             </a>
            
        </div>
    </div>
 	
 	

 	<c:import url="./temp/boot_footer.jsp"></c:import>
</div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu/main.js">
	</script>
</body>

</html> 

