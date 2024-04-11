<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<hr>
<header>
	<div class="logo_wrap">
		<a href="/pro1"><img src="${hpath }/images/magok_logo.png" alt="강서구 마곡동 로고" /></a>
	</div>
	<nav id="tnb">
		<ul>
			<!-- 로그인을아직 안한 경우 -->
			<c:if test="${empty sid }">
			<li><a href ="${hpath }/member/">로그인</a></li>
			<li><a href ="${hpath }/member/">회원가입</a></li>
			</c:if>
			<!-- 로그인을 한 경우 -->
			<c:if test="${not empty sid }"> 
			<li><a href ="${hpath }/member/">로그아웃</a></li>
			<li><a href ="${hpath }/member/">회원가입</a></li>
			</c:if>
			<c:if test="${sid.equals('admin') }"> 
			<li><a href ="${hpath }/admin/">관리자료</a></li>
			</c:if>
		</ul>
	</nav>
	<nav id="gnb">
		<ul class="main_menu">
			<li><a href="">커뮤니티</a>
				<ul>
					<li><a href="${hpath }/notilist">공지사항</a></li>
					<li><a href="">자료실</a></li>
					<li><a href="">묻고답하기</a></li>
				</ul>
			</li>
		</ul>
		<h2>메인메뉴</h2>
	</nav>
	
</header>