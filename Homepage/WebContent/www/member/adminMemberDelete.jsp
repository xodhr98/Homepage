<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="www.MemberBean"%>
<jsp:useBean id="mMgr" class="www.MemberMgr"/>
</head>

<body>   
<%
	boolean result = mMgr.deleteMember(request.getParameter("id"));

	String message="삭제되지 않았습니다.";
	if(result ){        
    	message = "삭제되었습니다.";
	}
%> 

<script>   
	alert("<%=message%>");
	location.href="adminMemberList.jsp";  
</script>
</body>
</html>