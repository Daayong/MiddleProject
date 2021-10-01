<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> 관리자 페이지 </title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../resources/css/admin/styles.css" rel="stylesheet"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">	<!-- 네비게이션 바 -->
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a> 
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content"> <!-- 내용 들어가는 곳! -->
                <main>
                    <div class="container-fluid px-4 mt-5">
                       <form class="col-sm-8" action="prdUpload" method="post" enctype="multipart/form-data">
                       	  <div class="row mb-3">
						  <label for="inputPrdName" class="col-sm-2 col-form-label">상품코드</label>
						  <div class="col-sm-10">
						    <input type="text" class="form-control" id="inputPrdName" name="prd_code">
						  </div>
						  </div>
						  <div class="row mb-3">
						    <label for="inputPrdName" class="col-sm-2 col-form-label">상품명</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputPrdName" name="prd_name">
						    </div>
						  </div>
						  <div class="row mb-3">
						    <label for="inputPrdSubName" class="col-sm-2 col-form-label">상품서브명</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputPrdSubName" name="prd_subName">
						    </div>
						  </div>
						  <div class="row mb-3">
						    <label for="inputPrdPrice" class="col-sm-2 col-form-label">상품가격</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputPrdPrice" name="prd_price">
						    </div>
						  </div>
						  <div class="row mb-3">
						    <label for="inputPrdEtc" class="col-sm-2 col-form-label">상품조리법정보</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputPrdEtc" name="prd_etc">
						    </div>
						  </div>
						  <div class="row mb-3">
						    <div class="form-floating">
							  <textarea class="form-control" id="inputPrdDescription" style="height: 100px" name="prd_description"></textarea>
							  <label for="inputPrdDescription">상품설명</label>
							</div>
						  </div>
						  <!-- SummerNote 상세설명 추가 -->
						  <div class="row mb-3">
						    <div class="form-floating">
							  <textarea class="form-control" id="inputPrdDescription" style="height: 100px" name="prd_info"></textarea>
							  <label for="inputPrdDescription">상품정보</label>
							</div>
						  </div>
						  <!-- SummerNote 상세설명 추가 -->
						  <div class="mb-3">
							  <label for="inputPrdUpImg" class="form-label"> 상품 상단 슬라이더 이미지</label>
							  <input class="form-control" name="files" type="file" id="inputPrdUpImg" multiple="multiple">
						  </div>
					<!-- 	  <div class="mb-3">
							  <label for="inputPrdDownImg" class="form-label"> 상품 하단 정보 이미지</label>
							  <input class="form-control" type="file" id="inputPrdDownImg" multiple name="prd_downImg">
						  </div> -->
						  <label for="inputPrdOrderDate" class="form-label">배송 가능 일자</label>
						  <div class="row g-2 mb-3">
							  <div class="col-md">
							    <div class="form-floating">
							      	<input type="text" class="form-control datepicker" id="startDate">
							      	<label for="floatingInputGrid">시작일자</label>
							    </div>
							  </div>
							  <div class="col-md">
							    <div class="form-floating">
							 		<input type="text" class="form-control datepicker" id="endDate">
							    	<label for="floatingSelectGrid">종료일자</label>
							    </div>
							  </div>
						  </div>
						 
						 
						 
						 
						 
						  <button type="submit" class="btn btn-primary">상품디비추가</button>
						</form>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript">
		$( function() {
		  $( ".datepicker" ).datepicker({
			  dateFormat: 'yy-mm-dd' //Input Display Format 변경
             ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
             ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
             ,changeYear: true //콤보박스에서 년 선택 가능
             ,changeMonth: true //콤보박스에서 월 선택 가능              
             ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
             ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
             ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
             ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
             ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
             ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
             ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
             ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)   
		  });
		});
		</script>
    </body>
</html>
