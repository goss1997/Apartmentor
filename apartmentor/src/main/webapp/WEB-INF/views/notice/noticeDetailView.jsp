<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세페이지</title>
</head>
<style>
	.noticeContent {
		width: 1200px;
		height: 800px;
		margin: auto;
	}

    h1 {
        text-align: left;
        margin-left: 80px;
    }


    .noticeDetailContent {
        background-color: #f0eee9;
    }
    
    #noticeDetail {
    	margin-left: 100px;
    	
    	
    }
    
    #noticeDetail th {
    	width: 100px;
    	text-align: center;
    }

</style>

</head>
<body>

<jsp:include page="../common/header.jsp"/>

<br>
<br>

<div class="visitContent">

	<h1>공지사항</h1>
	

	<br>
	<br>
	
	<div class="visitDetailContent">
	
	<br>
	<br>
	
	<form id="noticeStatus" action="" method="post">
		<input type="hidden" name="nno" value="${n.noticeNo}">
				<table id="noticeDetail">
					<tr style="height: 35px">
						<th>말머리</th>
						<td>${n.noticeCategoryValue}</td>
					</tr>
					<tr style="height: 35px">
						<th>제목</th>
						<td>${n.noticeTitle}</td>
					</tr>
					<tr style="height: 35px">
						<th>일정 종류</th>
						<td>${n.noticeCalender}</td>
					</tr>
					<tr style="height: 35px">
						<th>일정 날짜</th>
						<c:choose>
							<c:when test="${ not empty n.noticeStartDate }">
							<!-- case1. 일정이 있을 경우 -->
								<td style="width: 100px;">${n.noticeStartDate}</td>
								<td style="font-weight: bolder; width: 20px;">~</td>
								<td colspan="4">${n.noticeEndDate}</td>
							</c:when>
							<c:otherwise>
							<!-- case2. 일정이 없을 경우 -->
								<td>일정이 없습니다.</td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr style="height: 35px">
						<th>첨부파일</th>
						<td colspan="6" style="width: 400px;">
							<c:choose>
								<c:when test="${ empty n.originName }">
                    			<!-- case1. 첨부파일이 없을경우 -->
									첨부파일이 없습니다.
								</c:when>
								<c:otherwise>	                    
                    			<!-- case 2. 첨부파일이 있을경우 -->
                        			<a href="${ n.changeName }" download="${ n.originName }">${ n.originName }</a>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr style="height: 35px">
						<th style="vertical-align: top;">내용</th>
						<td colspan="6">
							<p style="white-space: pre-line;">${n.noticeContent}</p>
						</td>
					</tr>
				</table>

			</form>	
		<div style="margin-left: 150px; margin-top: 20px;">
			<button type="button" class="btn btn-outline-info" id="backBtn" onclick="history.back()">돌아가기</button>
			<c:if test="${loginUser.userName eq '관리자'}">
				<button type="button" class="btn btn-danger" id="deleteBtn" onclick="delete()">삭제</button>
				<button type="button" class="btn btn-info" id="updateBtn" onclick="update()">수정</button>&nbsp;&nbsp;&nbsp;
			</c:if>
		</div>
		
		<script>
		$(function(){
			var deleteBtn = $('#deleteBtn');
			var updateBtn = $('#updateBtn');
			
			deleteBtn.click(function(){
				const form = $('#noticeStatus');
				form.attr('action', 'delete.notice');
				form.submit();
			})
			
			updateBtn.click(function(){
				const form = $('#noticeStatus');
				form.attr('action', 'updateForm.notice');
				form.submit();
			})
			
		})
		
	</script>
	
		<br>
		<br>

	</div>

<br>
<br>

</div>

<br>
<br>
	

</body>
</html>