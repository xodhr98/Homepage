<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%@page import="www.MemberBean"%>
<jsp:useBean id="mMgr" class="www.MemberMgr"/>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
	String cPath = request.getContextPath();
	String url = cPath+"/www/left.jsp";
	boolean result = mMgr.deleteMember(id);
%>
<%
	if(result){
		session.invalidate();
%>
<script type="text/javascript">
		alert("회원탈퇴 되었습니다.");
		top.document.location.reload(); 
		location.href="../left.jsp";
</script>
<% }else{%>
<script type="text/javascript">
		alert("회원탈퇴에 실패하였습니다.");
		history.back();
</script>
<%}%>