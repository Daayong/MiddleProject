<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Home</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
  	
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
			width: 1180px;
			margin: 0 auto;
		}
		
		.product_table{
			margin-top: 100px;
			width: 100%;
			text-align: center;
		}
		
		.product_table tr td{
			border-bottom: 1px solid black;
		}
		
		.del_btn{
			width: 50px;
			height: 50px;
			border: 1px solid black;
		}
	</style>	
	
	</head>
	<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
		
		<div class="wrapper">		
		<!-- 여기에 페이지 작업 -->
			
			<div id="content">
		 		<div class="container">
                    <h1 class="mb-5"> COOKIT Product ManageMent </h1>
	                     <table class="product_table">
						  <tr>
						  	<th>번호<th>상품코드</th><th>상품명</th><th>상품가격</th><th>등록날짜</th><th>상태</th><th>남은수량</th><th></th>
						  </tr>
						  <c:forEach items="${prdDTO}" var="prd">
									  <tr>
							  	<td>1</td>
							  	<td>${prd.product_id}</td>
							  	<td>${prd.product_sub_name}&nbsp;*&nbsp;${prd.product_name}</td>
							  	<td>${prd.product_price}원</td>
							  	<td>2021-10-05</td>
							  	<td>판매중</td>
							  	<td>0</td>
							  	<td>
							  		<button type="button" class="del_btn">X</button>
							  		<input type="hidden" id="product_id" value="${prd.product_id}">
							  	</td>
							  </tr>
						  </c:forEach>
				   		</table>
                </div>
			</div>
			
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
						url: 'menu_delete?product_id=' + product_id,
						type: 'get',
						dataType: 'html',
						success: function(result){
							let a = $(result).find(".product_table").html();
							$(".product_table").html(a);
						}
					});	
				}
			});
		</script>
	</body>
</html>