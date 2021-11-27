<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>

<title>홈</title>

<%---------- Head Include ----------%>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
<%---------- Head Include End ----------%>

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
					<div class="col-md-12 col-lg-6 order-2 order-lg-1">
						<div class="hero-content  mx-auto">
							<h1 class="hero-title text-dark">놀면서<br>공부하는<br><strong>퀴즈캣</strong></h1>
							<p class="hero-subtitle lead mt-5 fw-normal">
								혹시 공부할 게 너무 많아서 힘드신가요?<br>
								또는 공부한 내용을 테스트해보고 싶나요?<br>
								그렇다면 퀴즈캣의 고양이 손이라도 빌리면 어떨까요?
							</p>
							<div class="hero-btns mt-2 mb-5">
								<a href="/quiz/list" class="btn btn-dark hero-btn btn-lg">시작하기</a>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-lg-6 order-1 order-lg-2">
						<div class="hero-img position-relative">
							<svg viewBox="0 0 500 500" xmlns="http://www.w3.org/2000/svg" width="100%" class="hero-blob waving">
                            <path d="M405,320.5Q332,391,231,424.5Q130,458,107.5,354Q85,250,107,145.5Q129,41,242.5,53.5Q356,66,417,158Q478,250,405,320.5Z" fill="#f1f1f1"></path>
                            </svg>
							<img class="rounded floating" src="/resources/images/cat.svg">
						</div>
					</div>
				</div>
			</div>
		</section>
		<%---------- Hero Section End ----------%>

		<%---------- CTA Section ----------%>
		<section class="cta">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="cta-content text-center position-relative rounded">
							<h3 class="cta-title text-dark">한국산업인력공단 국가자격 시험 일정을 여기서 한눈에 확인하세요!</h3>
							<hr>
							<table class="cta-text table table-hover">
		                        <thead class="table-dark">
		                            <tr>
		                                <th>시행년도<br>(시행회차)</th>
		                                <th>필기시험 원서접수<br>시작일 ~ 종료일</th>
		                                <th>필기시험<br>시작일 ~ 종료일</th>
		                                <th>필기시험<br>합격자 발표일</th>
		                                <th>실기/면접시험 원서접수<br>시작일 ~ 종료일</th>
		                                <th>실기/면접시험<br>시작일 ~ 종료일</th>
		                                <th>실기/면접시험<br>발표일</th>
		                            </tr>
		                        </thead>
		                        <tbody>
		                            <c:choose>
		                                <c:when test="${ fn:length(apiList) gt 0 }">
		                                    <c:forEach var="item" items="${ apiList }">
		                                        <tr>
		                                            <th scope="row">${ item.implYyDTO }<br>(${ item.implSeq })</th>
		                                            <td>
		                                            <fmt:parseDate var="docRegStartDt" value="${ item.docRegStartDt }" pattern="yyyyMMdd"/>
		                                            <fmt:parseDate var="docRegEndDt" value="${ item.docRegEndDt }" pattern="yyyyMMdd"/>
		                                            
		                                            <fmt:formatDate value="${ docRegStartDt }" pattern="yyyy-MM-dd" /> ~<br><fmt:formatDate value="${ docRegEndDt }" pattern="yyyy-MM-dd" />
		                                            </td>
		                                            <td><fmt:formatDate value="${ item.docExamStartDt }" pattern="yyyy-MM-dd" /> ~<br><fmt:formatDate value="${ item.docExamEndDt }" pattern="yyyy-MM-dd" /></td>
		                                            <td><fmt:formatDate value="${ item.docExamEndDt }" pattern="yyyy-MM-dd" /></td>
		                                            <td><fmt:formatDate value="${ item.pracRegStartDt }" pattern="yyyy-MM-dd" /> ~<br><fmt:formatDate value="${ item.pracRegEndDt }" pattern="yyyy-MM-dd" /></td>
		                                            <td><fmt:formatDate value="${ item.pracExamStartDt }" pattern="yyyy-MM-dd" /> ~<br><fmt:formatDate value="${ item.pracExamEndDt }" pattern="yyyy-MM-dd" /></td>
		                                            <td><fmt:formatDate value="${ item.pracPassDt }" pattern="yyyy-MM-dd" /></td>
		                                        </tr>
		                                    </c:forEach>
		                                </c:when>
		                                <c:otherwise>
		                                    <tr>
		                                        <td colspan="7">현재 데이터가 없습니다.</td>
		                                    </tr>
		                                </c:otherwise>
		                            </c:choose>
		                        </tbody>
		                    </table>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%---------- CTA Section End ----------%>
		
	</main>
	<%---------- Main End ----------%>

	<%---------- Footer Include ----------%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
    <%---------- Footer Include End ----------%>

</body>
</html>