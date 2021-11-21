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
							<h1 class="hero-title text-dark">We Turn Ideas Into Fine Products</h1>
							<p class="lead mt-4 hero-subtitle fw-normal">Lorem ipsum
								dolor sit amet, consectetur adipiscing elit. Sed elit sem,
								venenatis quis ullamcorper eu, venenatis vitae mauris. Nulla
								lacinia mollis est ut feugiat.
							</p>
							<div class="hero-btns mt-5">
								<a href="#" class="btn btn-dark hero-btn  btn-lg">Get Started</a>
								<a href="#" class="text-dark fw-bold ms-4">
								<img src="/resources/images/play-circle.svg"> Discover More</a>
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
		
		<%---------- Features Section ----------%>
		<section class="features">
			<div class="container short-section mx-auto">
				<div class="row">
					<div class="col-12">
						<div class="section-head mx-auto">
							<h3 class="section-title text-center text-dark fw-bold">What We Do</h3>
							<p class="section-subtitle mt-3 text-center mb-0">Lorem ipsum
								dolor sit amet, consectetur adipiscing elit. Quisque tortor
								libero, vulputate fringilla ipsum. Suspendisse tempus dignissim
								urna quis maximus. Aliquam at pharetra sapien.
							</p>
						</div>
					</div>
				</div>
				<div class="row mt-2 mt-md-5">
					<div class="col-12 col-md-6">
						<div class="feature-box position-relative">
							<img src="/resources/images/branding.svg" class="feature-box-icon">
							<h3 class="feature-box-title text-dark">Branding</h3>
							<p class="feature-box-text">Sed blandit dui egestas, sollicitudin nunc non, congue sem. Quisque dapibus in dolor.</p>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="feature-box position-relative">
							<img src="/resources/images/ux.svg" class="feature-box-icon">
							<h3 class="feature-box-title text-dark">UX</h3>
							<p class="feature-box-text">Sed blandit dui egestas, sollicitudin nunc non, congue sem. Quisque dapibus in dolor.</p>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="feature-box position-relative">
							<img src="/resources/images/growth.svg" class="feature-box-icon">
							<h3 class="feature-box-title text-dark">Growth</h3>
							<p class="feature-box-text">Sed blandit dui egestas, sollicitudin nunc non, congue sem. Quisque dapibus in dolor.</p>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="feature-box position-relative">
							<img src="/resources/images/marketing.svg" class="feature-box-icon">
							<h3 class="feature-box-title text-dark">Marketing</h3>
							<p class="feature-box-text">Sed blandit dui egestas, sollicitudin nunc non, congue sem. Quisque dapibus in dolor.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%---------- Features Section End ----------%>

		<%---------- USP Section ----------%>
		<section class="usp">
			<div class="container">
				<div class="row align-items-center">

					<%---------- USP Main ----------%>
					<div class="col-12 col-md-12 col-lg-4">
						<div class="usp-main position-relative">
							<h3 class="usp-main-title text-dark fw-bold">How It Works?</h3>
							<p class="mt-4">Pellentesque semper massa a quam rutrum, vitae dapibus quam dapibus. Duis at justo id metus fermentum eleifend.</p>
							<p class="mt-4">Donec pretium nulla facilisis, bibendum ligula eu, porttitor mi.</p>
							<a href="#" class="fw-bold text-dark">Learn More
							<img src="/resources/images/chevron-right.svg">
							</a>
						</div>
					</div>
					<%---------- USP Main End ----------%>
					
					<%---------- USP Cards Col-1 ----------%>
					<div class="col-12 col-sm-6 col-md-6 col-lg-4 px-lg-4">
						<div class="usp-sub p-4 rounded bg-white mt-4 mt-md-5">
							<div class="usp-sub-head d-flex align-items-center">
								<img src="/resources/images/vetted.svg">
								<span class="usp-sub-title text-dark fw-bold ms-1">Vetted Talent</span>
							</div>
							<p class="usp-sub-text mt-2 mb-0">Nullam finibus feugiat erat, nec venenatis lorem ullamcorper eget. In tellus ligula, sagittis in rutrum eget, suscipit sed orci.</p>
						</div>
						<div class="usp-sub p-4 rounded bg-white mt-4">
							<div class="usp-sub-head d-flex align-items-center">
								<img src="/resources/images/clock.svg">
								<span class="usp-sub-title text-dark fw-bold ms-1">Timely Delivery</span>
							</div>
							<p class="usp-sub-text mt-2 mb-0">Nullam finibus feugiat erat, nec venenatis lorem ullamcorper eget. In tellus ligula.</p>
						</div>
					</div>
					<%---------- USP Cards Col-1 End ----------%>

					<%---------- USP Cards Col-2 ----------%>
					<div class="col-12 col-sm-6 col-md-6 col-lg-4">
						<div class="usp-sub p-4 rounded bg-white mt-4">
							<div class="usp-sub-head d-flex align-items-center">
								<img src="/resources/images/unlimited.svg">
								<span class="usp-sub-title text-dark fw-bold ms-1">Unlimited Revisions</span>
							</div>
							<p class="usp-sub-text mt-2 mb-0">Nullam finibus feugiat erat, nec venenatis lorem ullamcorper eget. In tellus ligula.</p>
						</div>
						<div class="usp-sub p-4 rounded bg-white mt-4">
							<div class="usp-sub-head d-flex align-items-center">
								<img src="/resources/images/check.svg">
								<span class="usp-sub-title text-dark fw-bold ms-1">Proper Testing</span>
							</div>
							<p class="usp-sub-text mt-2 mb-0">Nullam finibus feugiat erat, nec venenatis lorem ullamcorper eget. In tellus ligula, sagittis in rutrum eget, suscipit sed orci.</p>
						</div>
					</div>
					<%---------- USP Cards Col-2 End ----------%>

				</div>
			</div>
		</section>
		<%---------- USP Section End ----------%>

		<%---------- CTA Section ----------%>
		<section class="cta mx-auto">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="cta-content text-center position-relative rounded">
							<h3 class="cta-title text-dark fw-bold">Try Karobar Today!</h3>
							<p class="cta-text mt-3">Duis faucibus consectetur pulvinar.
								Quisque arcu augue, aliquet nec accumsan at, tincidunt eu orci.
								Nullam finibus feugiat erat, nec venenatis lorem ullamcorper eget.</p>
							<a href="#" class="btn btn-dark btn-lg mt-3">Get Started!</a>
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