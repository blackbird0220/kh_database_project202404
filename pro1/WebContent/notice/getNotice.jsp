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
			<h3 class="page_title">공지사항 글 등록</h3>
			<form action="${path0 }/NotiIns.do"method="post" >
				<table class="table">
					<tbody>
						<tr>
								<th><label for="title">제목</label></th>
								<td>
										<input type="text" name="title" class="form-control" maxlength="100" required>
								<td>
						</tr>
						<tr>
								<th><label for="context">내용</label></th>
								<td>
										<textarea name="content" id="content" rows="8" cols="80" class="form-control"></textarea>
								</td>
						</tr>								
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
					<button type="submit" class="btn btn-secondary">글 등록</button>
					<a href ="${path0 }/NotiList.do" class="btn btn-secondary">글 목록</a>
				</div>	
			</form>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"></h3>
		</div>
		<hr>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>