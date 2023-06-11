/*
   로그인 정보인 'logedInfo'를 활용하여 로그인한 사용자의
   별명을 받아와 상단 nav에 'OO님 환영합니다.'와 같은 방식으로
   활용하기 위한 스트립트 파일
*/

const logOut = document.querySelector("#logout");
const board_logout = document.querySelector("#board_logout")
const nav_greeting = document.querySelector("#nav_user_greeting");

const logInfo = localStorage.getItem("logedInfo");
const logInfo_val = JSON.parse(logInfo);
const logInfo_nick = logInfo_val[2]; // local Storage에 저장된 로그인유저 별명

function logoutHandler() { // 로그인 정보인 'logedInfo'를 로컬 스토리지에서 삭제하여 로그아웃 처리
   localStorage.removeItem("logedInfo");
}

window.onload = function() { // 페이지 로드시 사용자 별명을 넣은 문구 출력
   nav_greeting.innerHTML = logInfo_nick + "님 환영합니다!";
}

logOut.addEventListener("click", logoutHandler);
board_logout.addEventListener("click", logoutHandler);