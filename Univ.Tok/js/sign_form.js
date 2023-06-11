/*
   회원가입 폼에서의 아이디 중복 검사
   가입 버튼(submit) 클릭 시 아이디 중복 재검사
   가입 가능할 시 local storage에 입력받은 데이터를
   local Storage에 저장하는 스크립트 파일
*/
const signForm = document.querySelector("#sign_form");
const input_value = signForm.querySelectorAll("#userid, #userPW, #name, #nickname");
const check_id = signForm.querySelector("#checkid");
const check_nick = signForm.querySelector("#checknick");
const input_dept = signForm.querySelector("#dept");
const input_email = signForm.querySelector("#email");
const input_phone = signForm.querySelector("#phone");

function idCheck() { // 아이디 중복 검사
   const inputIdValue = input_value[1].value;

   if(localStorage.getItem(inputIdValue) != null) { // 아이디 중복검사
      alert ('이미 사용중인 아이디 입니다. 다른 아이디를 이용해주세요.');
      input_value[1].value = ""; // 아이디 중복 시 아이디 입력란 초기화
      input_value[1].focus();
   } else if(input_value[1].value == "") {
      alert ('아이디를 입력해주세요.');
      input_value[1].focus(); // 아이디 미입력 시 알림 후 입력창 포커스 이동
   } else {
      alert ('사용 가능한 아이디 입니다!');
   }
}

function nickCheck() { // 별명 중복 검사
   const inputNickValue = input_value[2].value;

   if(localStorage.getItem(inputNickValue) != null) { // 별명 중복검사
      alert ('이미 사용중인 별명 입니다. 다른 별명을 이용해주세요.');
      input_value[2].value = ""; // 별명 중복 시 별명 입력란 초기화
      input_value[2].focus();
   } else if(input_value[2].value == "") {
      alert ('별명을 입력해주세요.');
      input_value[2].focus(); // 별명 미입력 시 알림 후 입력창 포커스 이동
   } else {
      alert ('사용 가능한 별명 입니다!');
   }
}

function signIn(event) { // 가입신청 시 아이디 중복여부 재검사 중복시 다시입력 미중복시 가입 가능 
	event.preventDefault();
   const username = input_value[0].value; // 이름 입력값
   const userid = input_value[1].value; // id 입력값
   const usernick = input_value[2].value; // 별명 입력값
   const userpw = input_value[3].value; // password 입력값
   const userdept = input_dept.value; // 학과 입력값
   const useremail = input_email.value; // 이메일 입력값
   const userphone = input_phone.value; // 연락처 입력값

   let userInfo = [userpw, username, usernick, userid, userdept, useremail, userphone]; // 배열 형식으로 local Storage에 값들을 저장하기 위한 변수 선언

   if(localStorage.getItem(userid) != null) { // 아이디 중복확인을 수행하지 않은 경우를 위해 아이디 중복여부 재검사
      alert ('이미 사용중인 아이디 입니다. 다른 아이디를 이용해주세요.'); 
      input_value[1].focus(); // 아이디 입력란으로 포커스 이동
   } else {
      localStorage.setItem(userid, JSON.stringify(userInfo)); // ID(key)에 해당하는 사용자 정보를 배열 형식으로 value에 저장
      alert ('회원가입이 완료되었습니다!');
      location.reload(true); // 가입 성공시 페이지 새로고침
   }
}

check_id.addEventListener("click", idCheck);
check_nick.addEventListener("click", nickCheck);
signForm.addEventListener("submit", signIn);


