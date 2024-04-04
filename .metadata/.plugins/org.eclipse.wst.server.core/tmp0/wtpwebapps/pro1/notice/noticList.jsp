<!-- WEB-INF에서 index 파일 붙여넣고 세부사항만 변경하기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>

<style>
.container{ width:1400px; }
.page { clear:both; height:100vh; }
#page { background-color:#42bcf5; }
#page { background-color:#fcb603; }
.page_title {font-size:36px; padding-top:2em; text-align:center;}
th.item1 {width:8%; }
th.item2 {width:60%; }
th.item3 {width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<hr>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">제작자: %{author }</h3>
				<div>
					<table class="table table-dark">
						<thead>
								<tr>
										<th class="item1">번호</th>
										<th class="item1">제목</th>
										<th class="item1">작성일</th>
										<th class="item1">조회수</th>
								
								</tr>
						</thead>
						<tbody>
								<c:if test="${not empty notiList}">
									<c:forEach var="dto" items="${notiList}">
									<tr>
										<td>${dto.no}</td>
										 <td><a href="${path0}/GetNotice.do?no=${dto.no }">${dto.title}</a></td>
									
									</tr>
								</c:forEach>
							</c:if>
						</tbody>				
					</table>
		
		</div>
		
		
		
		
		
		</div>
		<hr>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">
		<h3 class="page_title">임시 서버 애플리케이션 디렉토리: ${realPath }</h3>
		<h3>main 프로젝트 디렉토리: %{path0 }</h3>
		<h3>head 프로젝트 디렉토리: %{iPath }</h3>
		<h3>header 프로젝트 디렉토리: %{hPath } </h3>
		</div>
		<hr>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>