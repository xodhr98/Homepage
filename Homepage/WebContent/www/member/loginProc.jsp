<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="www.MemberMgr"/>
<%
	  request.setCharacterEncoding("euc-kr");
	  String cPath = request.getContextPath();
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pass");
	  String url = cPath+"/www/left.jsp";
	  String msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  }
%>
<script>
	alert("<%=msg%>");
	top.document.location.reload(); 
	location.href="<%=url%>";
</script>