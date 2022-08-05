<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문 예약 확인</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap 라이브러리 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>

.visitContent {
	width: 1200px;
	height: 800px;
	margin: auto;
}

#visitList {
	width: 800px;
}

#visitList th, td {
	text-align: center;
}

#visitList th:nth-child(1) {
	width: 100px;
}

#visitList th:nth-child(2) {
	width: 120px;
}

#visitList th:nth-child(3) {
	width: 120px;
}

#visitList th:nth-child(4) {
	width: 150px;
}


#visitList>tbody>tr:hover {
	cursor: pointer;
}

#search {
	text-align: right;
	padding-right: 210px;
}

#pagingArea {
	width: fit-content;
	margin: auto;
}
</style>
</head>
<body>

<!-- <jsp:include page="../common/header.jsp"/> -->

<br>
<br>

<div class="visitContent">

	<h1>방문 예약 확인</h1>
	
	<br>
	<br>

	<table id="visitList" class="table table-hover" align="center" >
			<thead>
				<tr>
					<th>
						<select name="visitCategory" style="width:70px; height:30px; text-align:center; font-weight:bolder;">
							<option value="전체" selected>전체</option>
							<option value="가스">가스</option>
							<option value="난방">난방</option>
							<option value="소독">소독</option>
							<option value="수도">수도</option>
							<option value="전기">전기</option>
						</select>
					</th>
					<th>동·호수</th>
					<th>예약 상태</th>
					<th>신청일</th>
				</tr>
			</thead>
			<tbody>
				<!-- 더미데이터 -->
				<tr onclick="">
					<td>수도</td>
					<td>1동 101호</td>
					<td>예약 승인</td>
					<td>2022-08-04</td>
				</tr>
				<tr>
					<td>수도</td>
					<td>1동 101호</td>
					<td>예약 승인</td>
					<td>2022-08-04</td>
				</tr>
				<tr>
					<td>수도</td>
					<td>1동 101호</td>
					<td>예약 승인</td>
					<td>2022-08-04</td>
				</tr>
				<tr>
					<td>수도</td>
					<td>1동 101호</td>
					<td>예약 승인</td>
					<td>2022-08-04</td>
				</tr>
			</tbody>
		</table>
	
	
	<div id="pagingArea">
	
	
	</div>

	<script>
		$('.select').click(function(){
			if($('.category').is(':visible')) {
				$('.category').css('display','none');
			}
			else {
				$('.category').css('display','block');
				console.log($('.category').val())
			}
		})
		
	</script>

</div>

<jsp:include page="../common/footer.jsp"/>

</body>
</html>