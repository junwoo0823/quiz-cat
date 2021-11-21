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
					<table class="table table-sm table-bordered">
						<thead class="table-dark">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody style="background: white;">
							<tr>
								<th scope="row">1</th>
								<td>가나다</td>
								<td>홍길동</td>
								<td>2021.11.21</td>
								<td>10</td>
							</tr>
						</tbody>
					</table>

					<div>
						<ul class="pagination justify-content-center mt-3">
							<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</div>

					<div class="input-group mx-auto my-4" style="width: 30%">
						<div class="input-group-prepend">
							<select class="btn btn-dark px-2" name="type">
								<option value="" disabled selected>선택</option>
								<option value="subject">제목</option>
								<option value="content">내용</option>
								<option value="name">작성자</option>
							</select>
						</div>
						<div class="input-group-append">
							<input type="text" class="form-control" name="keyword">
						</div>
						<div class="input-group-append">
							<button class="btn btn-dark px-3" type="button" id="btnSearch">검색</button>
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