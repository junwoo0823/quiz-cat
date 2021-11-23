<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>

<title>퀴즈</title>

<%---------- Head Include ----------%>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
<%---------- Head Include End ----------%>

<link href="/resources/css/quiz.css" rel="stylesheet">

</head>

<body>

	<%---------- Navigation Include ----------%>
	<jsp:include page="/WEB-INF/views/include/navigation.jsp" />
	<%---------- Navigation Include End ----------%>

	<%---------- Login Modal Include ----------%>
	<jsp:include page="/WEB-INF/views/include/loginModal.jsp" />
	<%---------- Login Modal Include End ----------%>

	<%---------- Main ----------%>
	<main>

		<%---------- Hero Section ----------%>
		<section class="hero">
			<div class="container">
				<div class="row align-items-center">
					<div class="card mb-3 pt-2 text-center text-white bg-dark">
						<h2 id="title">
							<strong>퀴즈 게시판</strong>
						</h2>
						<c:if test="${ not empty id }">
							<a href="/quiz/write" class="side"><i class="fas fa-pencil-alt"></i></a>
						</c:if>
					</div>

					<div class="page-content note-has-grid">
						<div class="tab-content bg-transparent">
							<div id="note-full-container" class="note-has-grid row">
								<c:if test="${ fn:length(bunchList) eq 0 }">
									<div class="no-result">
										<p>검색결과 없음</p>
									</div>
								</c:if>
								<c:forEach var="bunch" items="${ bunchList }">
									<div class="col-md-4 single-note-item">
										<div class="card card-body shadow-sm" onclick="location.href='/quiz/content?bunchNum=${ bunch.num }'">
											<span class="side-stick"></span>
											<h5 class="note-title text-truncate mb-0">${ bunch.title }</h5>
											<p class="badge rounded-pill bg-dark mt-2">${ bunch.quizCount } 문제</p>
											<div class="note-content">
												<p class="note-inner-content text-muted">만든이 : ${ bunch.memberId }</p>
											</div>
											<div class="d-flex align-items-center">
												<span class="mr-1"><i class="fa fa-star favourite-note text-warning"></i></span>&nbsp;
												<c:if test="${ id eq bunch.memberId || id eq 'admin' }">
					                                <span onclick="btnDelete()" id="btn-delete" class="mr-1"><i class="fa fa-trash remove-note text-secondary"></i></span>
					                            </c:if>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

					<div>
						<ul class="pagination justify-content-center mt-3">
							<c:if test="${ pageMaker.prev eq true }">
								<li class="page-item">
									<a class="page-link" href="/quiz/list?pageNum=${ pageMaker.startPage - 1 }&type=${ pageMaker.cri.type }&keyword=${ pageMaker.cri.keyword }" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
							</c:if>
							<c:forEach var="i" begin="${ pageMaker.startPage }" end="${ pageMaker.endPage }" step="1">
								<li class="page-item ${ pageMaker.cri.pageNum eq i ? 'active' : '' }">
									<a class="page-link" href="/quiz/list?pageNum=${ pageScope.i }&type=${ pageMaker.cri.type }&keyword=${ pageMaker.cri.keyword }">${ i }</a>
								</li>
							</c:forEach>
							<c:if test="${ pageMaker.next eq true }">
								<li class="page-item">
									<a class="page-link" href="/quiz/list?pageNum=${ pageMaker.endPage + 1 }&type=${ pageMaker.cri.type }&keyword=${ pageMaker.cri.keyword }" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</c:if>
						</ul>
					</div>

					<form action="/quiz/list" method="GET">
						<div class="input-group mx-auto my-4" style="width: 30%">
							<div class="input-group-prepend">
								<select class="btn btn-dark px-2" name="type">
									<option value="" disabled selected>선택</option>
									<option value="title" ${ pageMaker.cri.type eq 'title' ? 'selected' : '' }>제목</option>
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
	
	<script>
     function btnDelete(){
         var isDelete = confirm('정말 삭제하시겠습니까?');
         
         if(isDelete == true){
             alert('삭제가 완료되었습니다.');
             location.href='/quiz/delete?bunchNum=${ bunch.num }';
         }
     }
    </script>

</body>
</html>