<%@ page contentType="text/html; charset=euc-kr"%>
<%
	  String id = (String) session.getAttribute("idKey");
	  String cPath = request.getContextPath();
	  String url = "member/member.jsp";
	  String url1 = "main.jsp";
	  String label = "회원가입";
	  String label1 = "메인";
      if(id!=null){
        url = "member/memberUpdate.jsp";
        label = "회원수정";
      }
      //관리자 회원목록보기
      if(session.getAttribute("idKey")!=null && session.getAttribute("idKey").equals("admin")){
         url1 = "member/adminMemberList.jsp";
         label1 = "회원목록보기";
      }
%>
<html>
<head>
<title>head</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table width="1280" border="0" cellpadding="0" cellspacing="0" >
		<tr>
			<td colspan="5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr>
						<td height="50">
						<a href="<%=cPath%>/www/index.jsp" target="_parent" onFocus="this.blur();">
						<img src="images/logo.png" border=0></a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr height="20" >
			<td colspan="5">&nbsp;</td>
		</tr>
		<tr>
			<td width="250">&nbsp;</td>
			<td><font size="3"><a href="<%=url%>" target="content"><b><%=label%></b></a></font></td>
			<td><font size="3"><a href="<%=url1%>" target="content"><b><%=label1%></b></a></font></td>
			<td><font size="3"><a href="board/list.jsp" target="content"><b>게시판</b></a></font></td>
		</tr>
	</table>
</body>
</html>