<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header class="header">
   <nav id="primary-nav" class="primary-menu navbar navbar-expand-lg navbar-light fixed-top">
      <div class="container">
         <a class="navbar-brand" href="#"><img src="/resources/images/logo.png"></a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto mt-3 mt-md-0 mb-2 mb-lg-0">
               <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#">About</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#">Product</a>
               </li>
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                     data-bs-toggle="dropdown" aria-expanded="false">
                     Services
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <li><a class="dropdown-item" href="#">Design</a></li>
                     <li><a class="dropdown-item" href="#">Development</a></li>
                     <li><a class="dropdown-item" href="#">Copywriting</a></li>
                     <li><a class="dropdown-item" href="#">Digital Marketing</a></li>
                     <li><a class="dropdown-item" href="#">Growth Hacking</a></li>
                  </ul>
               </li>
            </ul>
            <a href="#" class="text-dark ms-3 fw-bold ms-lg-4" data-bs-toggle="modal" data-bs-target="#loginModal">Login</a>
            <a href="/member/signUp" class="btn btn-dark ms-2 fw-bold ms-lg-4">Sign Up</a>
         </div>
      </div>
   </nav>
</header>