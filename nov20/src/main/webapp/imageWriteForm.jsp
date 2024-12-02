<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="image.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	ImageBBS dto = (ImageBBS)request.getAttribute("imageBBS");
	String title = (String)request.getAttribute("title");
%>


	<h3 align="center">이미지 게시글 작성</h3>
	<form action="imageWrite.do" method="post" enctype="multipart/form-data"
			onsubmit="return check(this)"> <!-- this: 현재의 객체인 form을 의미함 -->
	
	<input type="hidden" name="orderno" />
	<input type="hidden" name="groupid" />
	<input type="hidden" name="parentid" />
	
	<table>
		<tr><th>제 목</th><td><input type="text" name="TITLE" placeholder="제목을 입력하세요"/></td></tr>
		<tr><th>암 호</th><td><input type="password" name="PW"/></td></tr>
		<tr><th>이미지</th><td><input type="file" name="IMAGENAME"/></td></tr>
		<tr><th>내 용</th><td><textarea rows="8" cols="40" name="CONTENT"></textarea></td></tr>
		<tr><td colspan="2" align="center"><input type="submit" value="글 올리기"/>
			<input type="reset" value="취 소" /> </td></tr>
	</table>
	</form>
<script type="text/javascript">
function check(frm) {

		if(frm.TITLE.value == '') {
			alert("제목을 입력하세요");
			frm.TITLE.focus();
			return false;
		} else {
			if(frm.TITLE.value.length > 20) {
				alert("제목은 20자 이내로 입력하세요."); frm.TITLE.focus(); return false;
			}
		}
		
		if(frm.PW.value == ''){
			alert("암호를 입력하세요");
			frm.PW.focus();
			return false;
		} else {
			if(frm.PW.value.length > 20) {
				alert("암호는 20자 이내로 입력하세요."); frm.PW.focus(); return false;
			}
		}
		
		if(frm.IMAGENAME.value == '') {
			alert("이미지 파일을 선택하세요");
			frm.IMAGENAME.focus();
			return false;
		} 
		
		if(frm.CONTENT.value == '') {
			alert("내용을 입력하세요");
			frm.CONTENT.focus();
			return false;
		} else {
			if(frm.CONTENT.value.length > 50) {
				alert("내용은 50자 이내로 입력하세요."); frm.CONTENT.focus(); return false;
			}
		}
		
		if( !confirm("정말로 글을 올리시겠습니까?")) return false;

	
}
</script>

</body>
</html>