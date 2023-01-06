<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>kubg</title>
		<style>
   body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
   ul { padding:0; margin:0; list-style:none;  }

   div#root { width:90%; margin:0 auto; }
   
   header#header { font-size:60px; padding:20px 0; }
   header#header h1 a { color:#000; font-weight:bold; }
   
   nav#nav { padding:10px; text-align:right; }
   nav#nav ul li { display:inline-block; margin-left:10px; }

     section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
   section#container::after { content:""; display:block; clear:both; }
   aside { float:left; width:200px; }
   div#container_box { float:right; width:calc(100% - 200px - 20px); }
   
   aside ul li { text-align:center; margin-bottom:10px; }
   aside ul li a { display:block; width:100%; padding:10px 0;}
   aside ul li a:hover { background:#eee; }
   
   footer#footer { background:#f9f9f9; padding:20px; }
   footer#footer ul li { display:inline-block; margin-right:10px; }
</style>
	
	
</head>
<body>
<div id="root">
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp" %>		
		</div>
	</header>
	
	<nav id="nav">
		<div id="nav_box">
			<%@ include file="../include/nav.jsp" %>
		</div>
	</nav>
	
	<section id="container">
		<div id="container_box">
			<section id="content">
   <form role="form" method="post" autocomplete="off">
    <div class="input_area">
     <label for="userId">아이디</label>
     <input type="email" id="userId" name="userId" placeholder="example@email.com" required="required" />        
    </div>
    
    <div class="input_area">
     <label for="userPass">패스워드</label>
     <input type="password" id="userPass" name="userPass" required="required" />        
    </div>
    
    <div class="input_area">
     <label for="userName">닉네임</label>
     <input type="text" id="userName" name="userName" placeholder="닉네임을 입력해주세요" required="required" />        
    </div>
    
    <div class="input_area">
     <label for="userPhon">연락처</label>
     <input type="text" id="userPhon" name="userPhon" placeholder="연락처를 입력해주세요" required="required" />        
    </div>
    
    <button type="submit" id="signup_btn" name="signup_btn">회원가입</button>
    
   </form>     
</section>
		</div>
	</section>
	
	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>
	</footer>
</div>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bootstrap/bootstrap-theme.min.css">
<script src="/resources/bootstrap/bootstrap.min.js"></script>

</body>
</html>
