<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>

<title>자유 게시판</title>

<%---------- Head Include ----------%>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
<%---------- Head Include End ----------%>

<link rel="stylesheet" href="/resources/css/board.css">

</head>

<body>

	<%---------- Navigation Include ----------%>
	<jsp:include page="/WEB-INF/views/include/navigation.jsp" />
	<%---------- Navigation Include End ----------%>

	<%---------- Login Modal Include ----------%>
	<jsp:include page="/WEB-INF/views/include/loginModal.jsp" />
	<%---------- Login Modal Include End ----------%>

	<%---------- Main ----------%>
	<main class="m-0">

		<%---------- Hero Section ----------%>
		<section class="hero">
			<div class="container">
				<div class="row align-items-center">
					<div class="card mb-3 pt-2 text-center text-white bg-dark">
						<h2 id="title">
							<strong>자유 게시판</strong>
						</h2>
						<a href="#!" id="side"><i class="fas fa-edit"></i></a>
					</div>
					<div class="card">
						<div class="text-dark mx-auto mt-4" style="width: 98%">
							<h3 class="font-weight-bold text-left">제목입니다</h3>
							<div>
								<ul class="list" style="margin-left: -35px;">
									<li>&nbsp;<b>홍길동</b>&nbsp;</li>
									<li>&nbsp;<b>조회수</b>&nbsp;11&nbsp;</li>
									<li>&nbsp;<b>작성일</b>&nbsp;2021-11-20 (20:00)&nbsp;</li>
								</ul>
							</div>
							<hr>
							<div>내용입니다</div>
							<div id="dashedLine"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%---------- Hero Section End ----------%>

	</main>
	<%---------- Main End ----------%>

	<%---------- Footer Include ----------%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<%---------- Footer Include End ----------%>

</body>
</html>