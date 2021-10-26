<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>관리자 페이지</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/management/management_product.css">
    
    
	<style>
		html,body{
			height:100%;
			margin:0; 
		}
		.wrapper{
			min-height:100%;
			margin-top:85px;
			margin-bottom:-290px;
			}
		.push{
			height:290px;		
			}
			
		#content{
			width: 1440px;
			margin: 0 auto;
		}
	</style>	
	
	</head>
	<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
		
		<div class="wrapper">		
		<!-- 여기에 페이지 작업 -->
			
		
		
		<section id="content">
		
			<h1 class="title_txt"> Cookit Product ManageMent </h1>
			<h3 class="login_state">Login on : ${member.member_user_id}</h3>
			
			<div class="container">
				
				<!-- 상품관리 왼쪽 네비바 -->
				<c:import url="./product_nav.jsp"></c:import>
				
				<div class="inner_contents">		
   
	                <table class="product_table">
						  <tr>
							<th>상품코드</th><th>상품명</th><th>상품가격</th><th>상태</th><th>전체수량</th><th>남은수량</th><th></th><th></th>
						  </tr>
						  <c:forEach items="${prdDTO}" var="prd">
							  <tr>
							  	<td>${prd.product_id}</td>
							  	<td>${prd.product_sub_name}&nbsp;*&nbsp;${prd.product_name}</td>
							  	<td>${prd.product_price}원</td>
							  	<td>${prd.product_state}</td>
							  	<td>${prd.product_total_count}</td>
							  	<td class="stock">${prd.product_stock}</td>
							  	<td>
							  		<button type="button" class="more_btn">MORE</button>
							  		<button type="button" class="del_btn">X</button>
							  		<input type="hidden" id="product_id" value="${prd.product_id}">
							  	</td>
							  </tr>
						  </c:forEach>
		   			</table>
		   			
	   			</div>
			</div>
			
		</section>

		<!-- 여기까지 -->
		<div class="push"></div>
		</div>
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script type="text/javascript">
			$(document).on("click", ".del_btn", function() {
				let product_id = $(this).next("#product_id").val();
				let answer = confirm("상품번호 " + product_id + " 를 PRODUCT DB에서 삭제하시겠습니까?");
				
				if(answer){
					$.ajax({
						url: 'product_delete?product_id=' + product_id,
						type: 'get',
						dataType: 'html',
						success: function(result){
							let a = $(result).find(".product_table").html();
							$(".product_table").html(a);
						}
					});	
				}
			});
			
			$(".more_btn").on("click", function () {
				let product_id = $(this).nextAll("#product_id").val();
				let product_stock = parseInt($(this).parent().prevAll(".stock").text());
				
				$.ajax({
					url: 'product_update',
					type: 'get',
					data: {
						'product_id' : product_id,
						'product_stock' : product_stock
					},
					dataType: 'html',
					success: function (result) {
						$(".inner_contents").html(result);
						
					},
					error:function(request,status,error){
						
				        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				        
				    }
				});
			});
			
		</script>
		
	</body>
</html>