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

<link rel="stylesheet" href="/resources/css/quiz.css">

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
                  <h2 id="title"><strong>퀴즈 게시판</strong></h2>
                  <a href="#!" id="side"><i class="fas fa-edit"></i></a>
               </div>

               <div class="page-content note-has-grid">
                  <div class="tab-content bg-transparent">
                      <div id="note-full-container" class="note-has-grid row">
          
                          <div class="col-md-4 single-note-item">
                              <div class="card card-body">
                                  <span class="side-stick"></span>
                                  <h5 class="note-title text-truncate w-75 mb-0">Book a Ticket for Movie </h5>
                                  <p class="note-date font-12 text-muted">11 March 2009</p>
                                  <div class="note-content">
                                      <p class="note-inner-content text-muted">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                  </div>
                                  <div class="d-flex align-items-center">
                                      <span class="mr-1"><i class="fa fa-star favourite-note"></i></span>&nbsp;
                                      <span class="mr-1"><i class="fa fa-trash remove-note"></i></span>
                                  </div>
                              </div>
                          </div>
          
                      </div>
                  </div>
              </div>

               <div>
                  <ul class="pagination justify-content-center mt-3">
                     <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                           <span aria-hidden="true">&laquo;</span>
                        </a>
                     </li>
                     <li class="page-item active"><a class="page-link" href="#">1</a></li>
                     <li class="page-item"><a class="page-link" href="#">2</a></li>
                     <li class="page-item"><a class="page-link" href="#">3</a></li>
                     <li class="page-item"><a class="page-link" href="#">4</a></li>
                     <li class="page-item"><a class="page-link" href="#">5</a></li>
                     <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                           <span aria-hidden="true">&raquo;</span>
                        </a>
                     </li>
                  </ul>
               </div>

               <div class="input-group mx-auto my-4" style="width: 30%">
                  <div class="input-group-prepend">
                     <select class="btn btn-dark px-2" name="type">
                        <option value="" disabled selected>선택</option>
                        <option value="subject">제목</option>
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