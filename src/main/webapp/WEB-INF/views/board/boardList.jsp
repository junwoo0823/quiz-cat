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
						<a href="#!" class="side"><i class="fas fa-edit"></i></a>
					</div>
					<table class="table table-bordered table-hover">
						<thead class="table-dark">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody style="background: white; cursor: pointer;">
							<c:choose>
								<c:when test="${ pageMaker.totalCount gt 0 }">
									<c:forEach var="board" items="${ boardList }">
										<tr onclick="location.href='/board/content?num=${ board.num }&pageNum=${ pageMaker.cri.pageNum }'">
											<th scope="row">${ board.num }</th>
											<td><c:if test="${ board.reLev gt 0 }">
													<span class="reply-level" style="padding-left: ${ board.reLev * 15}px">⮡ </span>
												</c:if>
												${ board.subject }</td>
											<td>${ board.memberId }</td>
											<td><fmt:formatDate value="${ board.regDate }" pattern="yyyy.MM.dd" /></td>
											<td>${ board.viewCount }</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5">검색결과 없음</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>

					<div>
						<ul class="pagination justify-content-center mt-3">
							<c:if test="${ pageMaker.prev eq true }">
								<li class="page-item">
									<a class="page-link" href="/board/list?pageNum=${ pageMaker.startPage - 1 }&type=${ pageMaker.cri.type }&keyword=${ pageMaker.cri.keyword }" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
							</c:if>
							<c:forEach var="i" begin="${ pageMaker.startPage }" end="${ pageMaker.endPage }" step="1">
								<li class="page-item ${ pageMaker.cri.pageNum eq i ? 'active' : '' }">
									<a class="page-link" href="/board/list?pageNum=${ pageScope.i }&type=${ pageMaker.cri.type }&keyword=${ pageMaker.cri.keyword }">${ i }</a>
								</li>
							</c:forEach>
							<c:if test="${ pageMaker.next eq true }">
								<li class="page-item">
									<a class="page-link" href="/board/list?pageNum=${ pageMaker.endPage + 1 }&type=${ pageMaker.cri.type }&keyword=${ pageMaker.cri.keyword }" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</c:if>
						</ul>
					</div>

					<form action="/board/list" method="GET">
						<div class="input-group mx-auto my-4" style="width: 30%">
							<div class="input-group-prepend">
								<select class="btn btn-dark px-2" name="type">
									<option value="" disabled selected>선택</option>
									<option value="subject" ${ pageMaker.cri.type eq 'subject' ? 'selected' : '' }>제목</option>
									<option value="content" ${ pageMaker.cri.type eq 'content' ? 'selected' : '' }>내용</option>
									<option value="memberId" ${ pageMaker.cri.type eq 'memberId' ? 'selected' : '' }>작성자</option>
								</select>
							</div>
							<div class="input-group-append">
								<input type="text" class="form-control" name="keyword" value="${ pageMaker.cri.keyword }">
							</div>
							<div class="input-group-append">
								<button class="btn btn-dark px-3" type="submit" id="btnSearch">검색</button>
							</div>
						</div>
					</form>

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