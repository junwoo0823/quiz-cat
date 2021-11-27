<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="footer-credits text-center py-3 py-lg-4">
					<p class="mb-0">
						&copy; 2021 <a href="#">QUIZCAT</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</footer>

<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script src="/resources/js/jquery.serializeObject.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/basic.js"></script>
<script src="/resources/js/member.js"></script>

<c:if test="${not empty login }">
	<script>
		$('#loginModal').modal('show');
	</script>
</c:if>