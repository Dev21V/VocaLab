<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>VocaLab-mypage</title>
        <!-- CSS 파일 경로 -->
        <link rel="stylesheet" type="text/css" href="/css/top.css">
        <link rel="stylesheet" type="text/css" href="/css/bottom.css">
        <link rel="stylesheet" type="text/css" href="/css/global.css">
        <link rel="stylesheet" type="text/css" href="/css/myPage/myPage.css">
        <!-- JavaScript 파일 경로 -->
        <script src="/js/top.js"></script> <!-- 배너 -->
        <script src="/js/bottom.js"></script> <!-- 배너 -->
        <script src="/js/myPage/myPage.js"></script> <!-- 배너 -->
    </head>
    <body>
    <div class="mypage-container">
        <div id="banner_top" role="banner">
            <%@ include file="../banners/top_left.jsp" %>
        </div>
        <div class="mypage-main-container">
            <div class="sidebar">
                <ul>
                    <li id="word-history" class="menu-item">
                        <a href="/myPage/compileHistory">단어 생성 기록</a>
                    </li>
                    <li id="member-info" class="menu-item active">
                        <a href="/myPage/userInformation">회원정보</a>
                    </li>
                </ul>
            </div>
            <div class="member-edit-page">
                <h1>회원 정보 수정</h1>
                <form>
                    <div class="edit-list">
                        <div class="edit-menu">
                            <label for="username">아이디:</label>
                            <label for="password">비밀번호:</label>
                            <label for="confirm-password">비밀번호 확인:</label>
                            <label for="name">이름:</label>
                            <label for="nickname">닉네임:</label>
                            <label for="email">이메일:</label>
                            <label for="dob">생년월일:</label>
                            <label for="gender">성별:</label>
                        </div>
                        <div class="edit-data">
                            <input type="text" id="username" value="${user.userId}" disabled>
                            <input type="password" name="password" id="password">
                            <input type="password" name="confirm-password"  id="confirm-password">
                            <input type="text" id="name" value="${user.userName}" disabled>
                            <input type="text" id="nickname" value="${user.userNickname}">
                            <input type="email" id="email" value="${user.userEmail}" disabled>
                            <input type="date" id="dob" value="${birth}" disabled>
                            <c:choose>
                                <c:when test="${user.gender eq 1}" >
                                    <input type="text" id="gender" value="남자" disabled>
                                </c:when>
                                <c:otherwise>
                                    <input type="text" id="gender" value="여자" disabled>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <div>
                        <button type="button" onclick="goToEditPage()">회원정보 수정</button>
                    </div>
                </form>
                <a onclick="" class="withdraw">회원탈퇴</a>
            </div>
        </div>
        <div class="banner_bottom">
            <%@ include file="../banners/bottom.jsp" %>
        </div>
    </div>

    </body>
</html>