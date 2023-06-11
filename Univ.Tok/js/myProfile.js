/*
   로그인 한 사용자의 정보 수정을 위한 스크립트 페이지
   로그인 정보인 'logedInfo'와 회원가입 등록된 정보를 이용하여
   변경하고자 하는 내용으로 교체
*/
const myProfileForm = document.querySelector("#mypro");
const getLogInfo = localStorage.getItem("logedInfo");
let getLogInfo_value = JSON.parse(getLogInfo); // 로그인 되어있는 유저 정보

const myId = myProfileForm.querySelector("#my_id"); // 현재 아이디 출력할 태그

const changePw_btn = myProfileForm.querySelector("#changepw"); // PW 변경 버튼
const newPw = myProfileForm.querySelector("#newpw"); // 입력 받은 새 PW

const myNick = myProfileForm.querySelector("#mynick"); // 현재 별명 출력할 태그
const changeNick_btn = myProfileForm.querySelector("#changenick"); // 별명 변경 버튼
const newNick = myProfileForm.querySelector("#newnick"); // 입력 받은 새 별명

const myDept = myProfileForm.querySelector("#mydept"); // 현재 학과 출력할 태그
const changeDept_btn = myProfileForm.querySelector("#changedept"); // 학과 변경 버튼
const newDept = myProfileForm.querySelector("#newdept"); // 입력 받은 새 학과

const myEmail = myProfileForm.querySelector("#myemail"); // 현재 이메일 출력할 태그
const changeEmail_btn = myProfileForm.querySelector("#changeemail"); // 이메일 변경 버튼
const newEmail = myProfileForm.querySelector("#newemail"); // 입력 받은 새 이메일

const myPhone = myProfileForm.querySelector("#myphone"); // 현재 연락처
const changePhone_btn = myProfileForm.querySelector("#changephone"); // 연락처 변경 버튼
const newPhone = myProfileForm.querySelector("#newphone"); // 입력 받은 새 연락처

const changeFin = myProfileForm.querySelector("#changefin"); // 수정완료 버튼

let nowId = getLogInfo_value[3]; // 현재 id
let nowPw = getLogInfo_value[0]; // 현재 PW
let nowNick = getLogInfo_value[2]; // 현재 별명
let nowName = getLogInfo_value[1]; // 현재 이름
let nowDept = getLogInfo_value[4]; // 현재 학과
let nowEmail = getLogInfo_value[5]; // 현재 이메일
let nowPhone = getLogInfo_value[6]; // 현재 연락처


window.onload = function() { // 현재 로그인된 사용자의 정보 출력을 위한 함수
   myId.innerHTML = nowId;
   myNick.innerHTML = nowNick;
   myDept.innerHTML = nowDept;
   myEmail.innerHTML = nowEmail;
   myPhone.innerHTML = nowPhone;
}

/*
   입력받은 값을 기존 등록된 데이터에 넣어주기 위한 함수들
   로그인 정보가 아닌 실제 등록된 유저 정보를 교체하기 위해
   함수 실행시 실제 등록되어 있는 유저의 값을 불러와 교체를
   하지 않는 값은 그대로 넣어주고 교체하는 값은 입력값으로
   넣어주는 기능
*/
function changePwHandler() { // Password 수정을 위한 함수
   let getRealUserInfo = localStorage.getItem(getLogInfo_value[3]);
   let getRealUserInfo_value = JSON.parse(getRealUserInfo); // 실제 등록된 유저 정보

   let realId = getRealUserInfo_value[3]; // 실제 id
   let realNick = getRealUserInfo_value[2]; // 실제 별명
   let realName = getRealUserInfo_value[1]; // 실제 이름
   let realDept = getRealUserInfo_value[4]; // 실제 학과
   let realEmail = getRealUserInfo_value[5]; // 실제 이메일
   let realPhone = getRealUserInfo_value[6]; // 실제 연락처

   const newInfoForPw = [newPw.value, realName, realNick, realId, realDept, realEmail, realPhone]; // 기존 데이터에 패스워드만 변경
   localStorage.setItem(nowId, JSON.stringify(newInfoForPw)); // local Storage에 변경사항을 저장
   alert("비밀번호가 변경 되었습니다!");
   newPw.value = "";
}

function changeNickHandler() { // 별명 수정을 위한 함수
   let getRealUserInfo = localStorage.getItem(getLogInfo_value[3]);
   let getRealUserInfo_value = JSON.parse(getRealUserInfo); // 실제 등록된 유저 정보

   let realId = getRealUserInfo_value[3]; // 실제 id
   let realPw = getRealUserInfo_value[0]; // 실제 PW
   let realName = getRealUserInfo_value[1]; // 실제 이름
   let realDept = getRealUserInfo_value[4]; // 실제 학과
   let realEmail = getRealUserInfo_value[5]; // 실제 이메일
   let realPhone = getRealUserInfo_value[6]; // 실제 연락처

   const newInfoForNick = [realPw, realName, newNick.value, realId, realDept, realEmail, realPhone];
   localStorage.setItem(nowId, JSON.stringify(newInfoForNick));
   alert("별명이 변경 되었습니다!");
   newNick.value = "";
}

function changeDeptHandler() { // 학과 수정을 위한 함수
   let getRealUserInfo = localStorage.getItem(getLogInfo_value[3]);
   let getRealUserInfo_value = JSON.parse(getRealUserInfo); // 실제 등록된 유저 정보

   let realId = getRealUserInfo_value[3]; // 실제 id
   let realPw = getRealUserInfo_value[0]; // 실제 PW
   let realNick = getRealUserInfo_value[2]; // 실제 별명
   let realName = getRealUserInfo_value[1]; // 실제 이름
   let realEmail = getRealUserInfo_value[5]; // 실제 이메일
   let realPhone = getRealUserInfo_value[6]; // 실제 연락처

   const newInfoForDept = [realPw, realName, realNick, realId, newDept.value, realEmail, realPhone]
   localStorage.setItem(nowId, JSON.stringify(newInfoForDept));
   alert("학과가 변경 되었습니다!");
   newDept.value = "";
}

function changeEmailHandler() { // 이메일 수정을 위한 함수
   let getRealUserInfo = localStorage.getItem(getLogInfo_value[3]);
   let getRealUserInfo_value = JSON.parse(getRealUserInfo); // 실제 등록된 유저 정보

   let realId = getRealUserInfo_value[3]; // 실제 id
   let realPw = getRealUserInfo_value[0]; // 실제 PW
   let realNick = getRealUserInfo_value[2]; // 실제 별명
   let realName = getRealUserInfo_value[1]; // 실제 이름
   let realDept = getRealUserInfo_value[4]; // 실제 학과
   let realPhone = getRealUserInfo_value[6]; // 실제 연락처

   const newInfoForEmail = [realPw, realName, realNick, realId, realDept, newEmail.value, realPhone]
   localStorage.setItem(nowId, JSON.stringify(newInfoForEmail));
   alert("E-mail이 변경 되었습니다!");
   newEmail.value = "";  
}

function changePhoneHandler() { // 연락처 수정을 위한 함수
   let getRealUserInfo = localStorage.getItem(getLogInfo_value[3]);
   let getRealUserInfo_value = JSON.parse(getRealUserInfo); // 실제 등록된 유저 정보

   let realId = getRealUserInfo_value[3]; // 실제 id
   let realPw = getRealUserInfo_value[0]; // 실제 PW
   let realNick = getRealUserInfo_value[2]; // 실제 별명
   let realName = getRealUserInfo_value[1]; // 실제 이름
   let realDept = getRealUserInfo_value[4]; // 실제 학과
   let realEmail = getRealUserInfo_value[5]; // 실제 이메일

   const newInfoForPhone = [realPw, realName, realNick, realId, realDept, realEmail, newPhone.value]
   localStorage.setItem(nowId, JSON.stringify(newInfoForPhone));
   alert("연락처가 변경 되었습니다!");
   newPhone.value = "";  
}

function changeFinish() { // 수정 완료 버튼 실행 함수
   localStorage.removeItem("logedInfo");
   alert ("정보 수정이 완료되었습니다. 다시 로그인 해주세요.");
}

changePw_btn.addEventListener("click", changePwHandler);
changeNick_btn.addEventListener("click", changeNickHandler);
changeDept_btn.addEventListener("click", changeDeptHandler);
changeEmail_btn.addEventListener("click", changeEmailHandler);
changePhone_btn.addEventListener("click", changePhoneHandler);
changeFin.addEventListener("click", changeFinish);