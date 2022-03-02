<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="d-flex align-items-center h-100 w-100">
	<div class="ml-3">
		<img src="/image/gmail.png" alt="아이콘1" width="28" height="26">
	</div>
	<div class="text-white col-8">
		<%-- 로그인 후 보여지는 유저 아이디 --%>
		<%-- 유저 아이디가 있는경우 아이디를 띄운다. --%>
		<%-- <c:if test="${not empty user.userId}">
			<div>
				<div>${user.userId}</div>
			</div>
		</c:if> --%>
	</div>
	<div class="m-1">
		<div class="gnb-date text-white">12:30</div>
	</div>
	<div class="mr-3">
		<img src="/image/icons8-phone-case-24.png" alt="아이콘2" width="26" height="26">
	</div>
</div>
