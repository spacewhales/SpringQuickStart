<!-- Model 1 으로 게시판 구현 -->
<!-- Model 1 을 MVC Model 로 변환 -->
<!-- 조희된 게시물의 상세 화면 제공하는 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 자바 코드를 EL로 대체 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세</title>
</head>
<body>
<center>
<h1>글 상세</h1>
<a href="logout.do">Log_out</a>
<hr>
<form action="updateBoard.do" method="post">
	<input type="hidden" name="seq" value="${board.seq }">
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange" width="70">제목</td>
			<td align="left"><input name="title" type="text" value="${board.title }"></td>
		</tr>
		<tr>
			<td bgcolor="orange">작성자</td>
			<td align="left">${board.writer }</td>
		</tr>
		<tr>
			<td bgcolor="orange">내용</td>
			<td align="left"><textarea name="content" cols="40" rows="10">
				${board.content }</textarea></td>
		</tr>
		<tr>
			<td bgcolor="orange">등록일</td>
			<td align="left">${board.regDate }</td>
		</tr>
		<tr>
			<td bgcolor="orange">조회수</td>
			<td align="left">${board.cnt }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글 수정">
			</td>	
	</table>
</form>
<hr>
<a href="insertBoard.jsp">글 등록</a>&nbsp;&nbsp;&nbsp;
<a href="deleteBoard_proc.do?seq=${board.seq }">글 삭제</a>&nbsp;&nbsp;&nbsp;
<a href="getBoardList.jsp">글 목록</a>
</center>
</body>
</html>