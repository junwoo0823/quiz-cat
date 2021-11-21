<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>

<title>회원가입</title>

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
	<main class="my-login-page">
	
		<form method="POST" class="my-login-validation">
		
			<section>
				<div class="container">
					<div class="row justify-content-md-center">
						<div class="card-wrapper">
							<div class="card fat shadow rounded">
								<div class="card-body">
								
									<h4 class="card-title text-center">Register</h4>
									
									<hr>

									<div class="form-group input-group-sm">
										<label for="id">아이디</label>
										<input id="id" type="text" class="form-control" name="id" required autofocus>
										<div class="invalid-feedback">What's your id?</div>
									</div>

									<div class="form-group input-group-sm">
										<label for="password">비밀번호</label>
										<input id="password" type="password" class="form-control" name="password" required>
										<div class="invalid-feedback">Password is Password?</div>
									</div>

									<div class="form-group input-group-sm">
										<label for="password2">비밀번호 재확인</label>
										<input id="password2" type="password" class="form-control" name="password2" required>
									</div>

									<div class="form-group input-group-sm">
										<label for="birthday">생년월일</label>
										<input id="birthday" type="date" class="form-control" name="birthday" required>
										<div class="invalid-feedback">What's your birthday?</div>
									</div>

									<div class="text-center">
										<button type="button" id="optionalBtn" class="btn btn-secondary btn-sm" onclick="option();">추가 정보</button>
									</div>

									<fieldset id="optional">
									
										<hr>

										<div class="form-group input-group-sm">
											<label for="profile">프로필 사진</label>
											<input type="file" class="form-control" name="profile" id="profile" aria-label="Upload">
										</div>

										<div class="form-group input-group-sm">
											<label for="name">이름</label>
											<input id="name" type="text" class="form-control" name="name">
										</div>

										<div class="form-group input-group-sm">
											<label for="gender">성별</label>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="gender" id="gender1" value="M" checked>
												<label class="form-check-label" for="gender1">남자</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="gender" id="gender2" value="F">
												<label class="form-check-label" for="gender2">여자</label>
											</div>
										</div>

										<div class="form-group input-group-sm">
											<label for="email">이메일</label>
											<input id="email" type="email" class="form-control" name="email">
										</div>

										<div class="form-group input-group-sm">
											<label for="recvEmail">이메일 수신 여부</label>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="recvEmail" id="emailYes" value="Y" checked>
												<label class="form-check-label" for="emailYes">예</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="recvEmail" id="emailNo" value="N">
												<label class="form-check-label" for="emailNo">아니오</label>
											</div>
										</div>
									</fieldset>

									<hr>
									
									<div class="form-group d-md-block text-center">
										<button type="submit" class="btn btn-dark">가입</button>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			
		</form>
		
    </main>
    <%---------- Main End ----------%>

    <%---------- Footer Include ----------%>
    <jsp:include page="/WEB-INF/views/include/footer.jsp" />
    <%---------- Footer Include End ----------%>
	
	<script>
		function option() {
			$('#optional').show();
			$('#optionalBtn').hide();
		}
	</script>

</body>
</html>