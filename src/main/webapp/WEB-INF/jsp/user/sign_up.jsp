<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<div id="logo-1" class="my-2 ml-4 d-flex align-items-center">
		<div>diary</div>
	</div>
	<form>
		<div class="d-flex justify-content-center">
			<div class="sign_up_box pl-2 pr-2">
				<div class="form-group m-0">
					<span class="sign-up-font-size font-weight-bold">ID</span>
					<div class="d-flex">
						<input type="text" class="form-control col-9 input-box-size" name="loginId" id="loginId">
						<button type="button" id="duplicateBtn" class="btn darkgray-btn ml-1">중복확인</button>
					</div>
					<div class="blank-box">
						<span id="duplicateMassage" class="text-danger small d-none">중복된 아이디입니다.</span>
						<span id="notDuplicateMassage" class="text-success small d-none">사용 가능한 아이디입니다.</span>
					</div>
				</div>
				<div class="form-group m-0">
					<span class="sign-up-font-size font-weight-bold">NAME</span>
					<div class="d-flex">
						<input type="text" class="form-control input-box-size" name="name" id="name">
					</div>
				</div>
				<div class="form-group m-0">
					<span class="sign-up-font-size font-weight-bold">PASSWORD</span>
					<div class="d-flex">
						<input type="password" class="form-control input-box-size" name="password" id="password">
					</div>
				</div>
				<div class="form-group m-0">
					<span class="sign-up-font-size font-weight-bold">PASSWORD Check</span>
					<div class="d-flex">
						<input type="password" class="form-control input-box-size" name="passwordCheck" id="passwordCheck">
					</div>
				</div>
				<div class="form-group m-0">
					<span class="sign-up-font-size font-weight-bold">EMAIL</span>
					<div class="d-flex">
						<input type="text" class="form-control input-box-size" name="email" id="email">
					</div>
				</div>
				<div class="form-group m-0">
					<span class="sign-up-font-size font-weight-bold">BIRTHDAY</span>
					<div class="d-flex justify-content-between">
						<input type="date" id="birthday" class="form-control input-box-size w-100">
					</div>
				</div>
				<div>
					<button type="button" id="signUpBtn" class="btn darkgray-btn mt-2 w-100">회원가입</button>
				</div>
			</div>
		</div>	
		<div class="d-flex justify-content-start py-2">
			<button class="btn sign-in-btn box-line">〈 이전화면</button>
		</div>
	</form>
</div>
<script>
	$(document).ready(function() {
		
		$('#duplicateBtn').on('click', function() {
			let loginId = $('#loginId').val().trim();
			// console.log(loginId);
			
			// 문구 초기화
			$('#duplicateMassage').addClass('d-none');
			$('#notDuplicateMassage').addClass('d-none');
			
			// 중복확인 loginId를 보내 DB에서 확인
			$.ajax({
				url: "/user/is_duplicate_loginId"
				, data: {'loginId': loginId}
				, success: function(data) {
					if(data.result) {
						// 같을 때
						$('#duplicateMassage').removeClass('d-none');
					} else if (data.result == false){ 
						// 다를 때
						$('#notDuplicateMassage').removeClass('d-none');
					} else { 
						// 에러
					}
				}
				, error: function(e) {
					alert("중복확인에 실패했습니다. 관리자에게 문의하세요.");
				}
				
			});	
		});	
		
		$('#signUpBtn').on('click', function() {
			
			let loginId = $('#loginId').val().trim();
			let name = $('#name').val().trim();
			let password = $('#password').val().trim();
			let passwordCheck = $('#passwordCheck').val().trim();
			let birthday = $('#birthday').val();
			
			// console.log(birthday +"," + loginId +"," + name +"," + password +"," +passwordCheck );
		});
	});
</script>