<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@page import="www.MemberBean"%>
<jsp:useBean id="mMgr" class="www.MemberMgr"/> 
    
<style>
  table {border: 2px double fuchsia; width:666px}
  td,th{border:1px fuchsia solid ; text-align: center; padding:5px}
</style>
<script>
    function idDelete(delID){
       
        //alert(delID);
        location.href = "adminMemberDelete.jsp?id=" + delID;   //get방식으로 삭제할아이디를 넘김
             
    }
</script>
<script>
    function idModify(modID){
       
        //alert(delID);
        location.href = "adminMemberModify.jsp?id=" + modID;   //get방식으로 삭제할아이디를 넘김
               
    }
</script>
<body>
    <b><font size="6" color="purple">전체 회원정보 보기</font></b>
    <table style="width:80%">
        <tr align="center">
            <td>아이디</td>
            <td>비밀번호</td>
            <td>이름</td>
            <td>성별</td>
            <td>생년월일</td>
            <td>이메일</td>
            <td>주소</td>
            <td>취미</td>
            <td>직업</td>
            <td>삭제</td>
            <td>수정</td>
        </tr>
           	<%
    		ArrayList<MemberBean> list = mMgr.getMemberList();
           	for(MemberBean bean : list) {
           	%>
        <tr>
            <td><%=bean.getId() %></td>
            <td><%=bean.getPass() %></td>
            <td><%=bean.getName() %></td>
            <td><%=bean.getSex() %></td>
            <td><%=bean.getBirthday() %></td>
            <td><%=bean.getEmail() %></td>
            <td><%=bean.getAddress() %></td>
            <td><%
            	String a[] = bean.getHobby();
            	for (int i = 0; i < a.length; i++) {
					out.println(a[i]);
				}
            	%>
            <td><%=bean.getJob() %></td>
            <td><input type="button" value="삭제" onclick="idDelete('<%=bean.getId() %>');"></td>
            <td><input type="button" value="수정" onclick="idModify('<%=bean.getId() %>');"></td>
            </tr>
	<%
	}
	%>
	</table>
</body>
</html>
