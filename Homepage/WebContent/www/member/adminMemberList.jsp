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
        location.href = "adminMemberDelete.jsp?id=" + delID;   //get������� �����Ҿ��̵� �ѱ�
             
    }
</script>
<script>
    function idModify(modID){
       
        //alert(delID);
        location.href = "adminMemberModify.jsp?id=" + modID;   //get������� �����Ҿ��̵� �ѱ�
               
    }
</script>
<body>
    <b><font size="6" color="purple">��ü ȸ������ ����</font></b>
    <table style="width:80%">
        <tr align="center">
            <td>���̵�</td>
            <td>��й�ȣ</td>
            <td>�̸�</td>
            <td>����</td>
            <td>�������</td>
            <td>�̸���</td>
            <td>�ּ�</td>
            <td>���</td>
            <td>����</td>
            <td>����</td>
            <td>����</td>
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
            <td><input type="button" value="����" onclick="idDelete('<%=bean.getId() %>');"></td>
            <td><input type="button" value="����" onclick="idModify('<%=bean.getId() %>');"></td>
            </tr>
	<%
	}
	%>
	</table>
</body>
</html>
