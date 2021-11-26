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
        <form action="/board/write" method="POST" enctype="multipart/form-data">
        
		<%---------- Hero Section ----------%>
		<section class="hero">
			<div class="container">
				<div class="row align-items-center">
					<div class="card mb-3 pt-2 text-center text-white bg-dark">
						<h2 id="title">
							<strong>자유 게시판</strong>
						</h2>
						<a href="/board/list" id="btn-back" class="side"><i class="fas fa-backward"></i></a>
					</div>
					<div class="card">
						<div class="text-dark mx-auto mt-4" style="width: 98%">

                            <div class="mx-auto my-3" style="width: 98%">

                                <div class="col-12">
                                    <input class="form-control span12" type="text" id="subject" name="subject" placeholder="제목을 입력해주세요." required />
                                </div>
                                
                                <hr>

                                <!-- 에디터 적용 -->
                                <div class="col-12">
                                    <textarea id="content" name="content"></textarea>
                                </div>

                                <hr>

                                <div class="small-6 columns d-flex justify-content-center" style="margin-top: 15px;">
                                    <button type="submit" class="btn btn-primary" onclick="getRegister();">등록하기</button>
                                </div>
                            </div>
						
						</div>
					</div>
				</div>
			</div>
		</section>
		<%---------- Hero Section End ----------%>
		
        </form>
	</main>
	<%---------- Main End ----------%>

	<%---------- Footer Include ----------%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<%---------- Footer Include End ----------%>
	
	<script>
	
        var editor_id = "content"; // 에디터 아이디
        
        var editor = SUNEDITOR.create(
                        (document.getElementById(editor_id)),
                        {
                            "lang" : SUNEDITOR_LANG['ko'],
                            "width" : "100%",
                            "height" : 480,
                            "imageWidth" : "auto",
                            "imageResizing" : false,
                            "imageHeightShow" : false,
                            "imageRotation" : false,
                            "imageFileInput" : false,
                            "imageUrlInput" : false,
                            "mediaAutoSelect" : false,
                            "placeholder" : "내용을 입력해주세요.",
                            "position" : "center",
                            "popupDisplay" : "local",
                            "buttonList" : [ [ 'align', 'horizontalRule' ],
		                                     [ 'fontSize' ],
		                                     [ 'fontColor', 'hiliteColor' ],
		                                     [ 'bold', 'italic', 'strike' ],
		                                     [ 'link', 'removeFormat' ],
		                                     [ 'showBlocks', 'codeView' ],
		                                     [ 'fullScreen' ], ],
                            "attributesWhitelist" : {
                                "img" : "width|height|data-source_width|data-source_height"
                            }
                        });

        function getRegister() {
            // 에디터 내용 저장
            editor.save();
            // 폼전송
            var frm = document.formBoard;
            frm.submit();
        }        
    </script>
	
</body>
</html>