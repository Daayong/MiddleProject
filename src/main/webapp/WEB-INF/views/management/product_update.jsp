<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	
<style>
/* ===== */
input, select{
	font-size: 20px;
}
.btn_box{
	position: absolute;
	right: 0;
	top: 0;
}
.btn{
	float: left;
	margin-right: 20px;
	padding: 10px;
	width: 50px;
	height: 50px;
	border: 1px solid black;
	cursor: pointer;
	text-align: center;
}
.product_detail{
	position: relative;
	color: black;
}

.id{
	font-size: 30px;
}

/* 테이블 */
.update_table{
	width: 1200px;
	margin: 50px auto 50px auto;
	border: 1px solid black;
	border-collapse: collapse;
	color: black;
}
.update_table tr td{
	border-top: 1px solid gray;
	padding: 10px 0 10px 10px;
	font-size: 24px;
}
.update_table tr td:first-child {
	border-right: 1px solid gray;
}
.left_align th{
	border-top: 1px solid black;
	border-right: 1px solid gray;
	padding: 10px 0 10px 10px;
	font-size: 24px;
	text-align: left;
}
.right_border td:not(last-child) {
	border-right: 1px solid gray;
}


/* 숨김 */
.hide{
	display: none;
}

</style>

<div class="product_detail">
	
	<div class="btn_box">
		<div class="update_btn btn" style="font-size: 14px;">수정</div>
		<div class="complete_btn btn hide" style="font-size: 14px;">완료</div>
		<div class="cancel_btn btn hide" style="font-size: 14px;">취소</div>
		<div class="prev_btn btn">X</div>
	</div>
	
	<h1 class="id"> 상품 아이디 : ${prdInfo.product_id} </h1>
	
	<table class="update_table">
		
		<thead>
			<tr>
				<th rowspan="1" style="text-align: left; font-size: 30px; padding: 10px 0 10px 0;">상품상세정보</th><th></th>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>상품이름</td><td>${prdInfo.product_name}</td>
			</tr>
			<tr>
				<td>상품부이름</td><td>${prdInfo.product_sub_name}</td>
			</tr>
			<tr>
				<td>상품조리법</td>
				<td>
					<span class="change_type">${prdInfo.product_recipe}</span>
					<span class="change_type hide">
						<input type="text" id="product_recipe" value="${prdInfo.product_recipe}">
					</span>
				</td>
			</tr>
			<tr>
				<td>상품가격</td>
				<td>
					<span class="change_type">${prdInfo.product_price}원</span>
					<span class="change_type hide">
						<input type="text" id="product_price" value="${prdInfo.product_price}">
					</span>
				</td>
			</tr>
			<tr>
				<td>상품상태</td>
				<td>
					<span class="change_type">${prdInfo.product_state}</span>
					<span class="change_type hide">
						<select id="product_state">
							<option value="판매가능">판매가능</option>
							<option value="품절">품절</option>
						</select>
					</span>
				</td>
			</tr>
			<tr>
				<td>상품총수량</td>
				<td>
					<span class="change_type">${prdInfo.product_total_count}</span>
					<span class="change_type hide">
						<input type="text" id="product_total_count" value="${prdInfo.product_total_count}">
					</span>
				</td>
			</tr>
			<tr>
				<td>상품남은수량</td><td>${prdInfo.product_stock}</td>
			</tr>
		</tbody>
		
	</table>
	
	<table class="update_table">
		
		<thead>
			<tr>
				<th rowspan="1" style="text-align: left; font-size: 30px; padding: 10px 0 10px 0;">일별 상품상세정보</th><th></th>
			</tr>
			<tr class="left_align">
				<th>등록일자</th>
				<th>구매횟수</th>
				<th>일별최대수량</th>
				<th>상태</th>
			</tr>
		</thead>
		
		<tbody>
		
			<c:forEach items="${dateInfo}" var="date">
				<fmt:parseDate value="${date.product_regdate}" var="parseDateValue" pattern="yyyy-MM-dd"/>
				
				<tr class="right_border">
					<td><fmt:formatDate value="${parseDateValue}" pattern="MM월 dd일"/></td>
					<td>${date.product_sell_count}</td>
					<td>
						<span class="change_type">${date.product_max_count}</span>
						<span class="change_type hide">
							<input type="text" id="product_max_count" value="${date.product_max_count}">
						</span>	
					</td>
					<td>
						<span class="change_type">${date.product_date_state}</span>
						<span class="change_type hide">
							<select id="product_state">
								<option value="판매가능">판매가능</option>
								<option value="상품준비중">상품준비중</option>
								<option value="주문마감">주문마감</option>
							</select>
						</span>	
					</td>
				</tr>
				
			</c:forEach>
			
		</tbody>
		
	</table>
	
</div>

<script type="text/javascript">
	$(".prev_btn").click(function (){
		location.href = 'product_manage';
	});
	
	$(".update_btn").click(function () {
		
		$(this).addClass("hide");
		$(".complete_btn").removeClass("hide");
		$(".cancel_btn").removeClass("hide");
		
		$(".change_type").each(function (){
			if($(this).hasClass("hide")){
				$(this).removeClass("hide");
			}else{
				$(this).addClass("hide");
			}
		});

	});
	
	$(".complete_btn").click(function (){
		
		let answer = confirm("해당 상품의 정보를 수정합니다.");
		
		// 수정 값
		let product_recipe = $("#product_recipe").val();
		let product_price = $("#product_price").val();
		let product_state = $("#product_state option:selected").val();
		let product_total_count = $("#product_total_count").val();
		
		let product_max_count = $("#product_max_count").val();
		let product_date_state = $("#product_date_state option:selected").val();
		
		alert(product_recipe);
		alert(product_price);
		alert(product_state);
		alert(product_total_count);
		
		alert(product_max_count);
		alert(product_date_state);
		
		if(answer){
			
			$.ajax({
				url: 'product_update',
				type: 'post',
				data: {
					
				},
				dataType: 'html',
				success: function (result) {
					
				},
				error:function(request,status,error){
					
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			        
			    }
			});
			
		}
		
	});
	
	$(".cancel_btn").click(function (){
		$(this).addClass("hide");
		$(".complete_btn").addClass("hide");
		$(".update_btn").removeClass("hide");
		
		$(".change_type").each(function (){
			if($(this).hasClass("hide")){
				$(this).removeClass("hide");
			}else{
				$(this).addClass("hide");
			}
		});
	});
</script>
