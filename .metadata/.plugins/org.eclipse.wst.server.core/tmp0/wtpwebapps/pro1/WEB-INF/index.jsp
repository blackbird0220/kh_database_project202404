<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="ipath" value="<%=request.getContextPath() %>" />
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
#page { background-color:#a4aba4; }
#page { background-color:#127a10; }
.page_title {font-size:36px; padding-top:2em; text-align:center;}
</style>
</head>

<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<hr>
	<section class="page" id="page1">
		<figure id="vs">
			<div id="carouseExmpleControls" class="carousel slide" data-ride="carousel">
			
			
			
			</div>
		
		</figure>
	</section>
		<hr>
	<section class="page" id="page2">
			
	</section>
			<hr>
	<section class="page" id="page3">
			
	</section>
	<section class="page" id="page4">
			
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>tml>