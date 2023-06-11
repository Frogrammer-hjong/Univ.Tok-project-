/*
   로그인 폼에서의 로그인 입력값 검사
   local Storage내에 존재하는 kye-value 값을 for문을 통해 로그인 입력값과 비교하여
   일치할 경우 로그인 처리하는 스크립트 파일
*/
const loginForm = document.querySelector("#login-form");
const login_values = loginForm.querySelectorAll("#loginId, #loginPW, #loginNick");
const login_submit = loginForm.querySelector("#login");

function loginCheck(event) {
	event.preventDefault(); // 로그인 버튼 클릭 시 페이지 새로고침 방지
   console.log(event);
   //const getLoginPw = localStorage.getItem(login_values[0].value); // 입력받은 id 값을 통한 password 값 받기
   let check_count = 0;

   if(login_values[0].value === "" && login_values[1].value === "") { // id 또는 password 미기입 상태 로그인 방지
      alert ('아이디와 패스워드를 입력해주세요.');
   } else if(login_values[0].value === "") {
      alert ('아이디를 입력해주세요.');
   } else if(login_values[1].value === "") {
      alert ('비밀번호를 입력해주세요.');
   } else {
      for(let i=0; i < localStorage.length; i++) { // 로그인 정보 확인을 위한 local Storage 내에 저장된 key/value 쌍 찾기
         check_count = 0; // 로그인 성공 여부 확인을 위한 변수 초기화
         const user_input_PW = login_values[1].value; // 사용자가 입력한 비밀번호
         const key = localStorage.key(i); // local Storage 내에 저장된 i번째 key 값 (ID)
         const value = localStorage.getItem(key); // local Storage 내에 저장된 i번째 key의 value 값 => [ 비밀번호, 이름, 별명 ]
         let valuesOfId = JSON.parse(value); // local Storage에 저장된 value값을 활용하기 위한 변수 선언

         if(key == login_values[0].value && valuesOfId[0] == user_input_PW) {
            check_count++; // 로그인 성공 여부 확인을 위한 변수 증가 (로그인 성공시 +1)
            login_values[2].value = valuesOfId[2]; // POST방식으로 로그인한 아이디에 해당하는 별명 값을 넘겨주기 위함
            localStorage.setItem("logedInfo", JSON.stringify(valuesOfId));
            alert (valuesOfId[2] +'님 반갑습니다!');
            loginForm.submit(); // preventDefault로 인해 중단된 action 활성화를 위한 submit
            break; // 로그인 요청한 입력값과 일치하는 key/value 값 발견시 반복문 탈출
         } 
      }
      if(check_count != 1) { // 로그인 실패 안내 및 입력란 초기화
         alert ('아이디 또는 패스워드가 잘못되었습니다.');
         login_values[0].value = "";
         login_values[1].value = "";
         login_values[0].focus();
      }
   }
}

loginForm.addEventListener("submit", loginCheck);
