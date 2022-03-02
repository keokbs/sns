<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<div id="logo-1">
		<div class="my-3">diary</div>
	</div>
	<div class="d-flex justify-content-center my-2">
		<img src="/image/notebook-g79d32ae7a_640.jpg" alt="diary-photo" class="my-3 mx-5" width="300">
	</div>
	<form>
		<div class="d-flex justify-content-center">
			<div class="input_box1">
				<div id="drop_the_text_id">
					<input type="text" id="userId" name="userId" class="form-control mb-2">
				</div>
				<div id="drop_the_text_password">
					<input type="password" id="password" name="password" class="form-control mb-2">
				</div>
			</div>
		</div>	
		<div class="d-flex justify-content-center mt-3">
			<div class="sign-in-btn-box d-flex justify-content-between align-items-center">
				<!-- <a href="/diary/user/sign_up_view" class="btn sign-in-btn">〈 회원가입</a> -->
				<button id="signUpBtn" class="btn sign-in-btn">〈 회원가입</button>
				<button id="loginBtn" class="btn sign-in-btn">로그인 〉</button>
			</div>
		</div>
	</form>
</div>
<script>
	$(document).ready(function(e) {
		// e.preventDefault();
		/*  
		$('#signUpBtn').on('click', function() {
			location.href = "/diary/user/sign_up_view";
		});
		
		$('#loginBtn').on('click', function() {
			
		}); */
		
		
	});
</script>