<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@page import="www.MemberBean"%>
<jsp:useBean id="mMgr" class="www.MemberMgr"/> 
<%
	String id = request.getParameter("id");
	MemberBean mBean = mMgr.getMember(id);
%>
<!DOCTYPE html>
<html>

<body bgcolor="#FFFFCC" onLoad="regFrm.id.focus()">
	<div align="center">
		<br /> <br />
		<form name="regFrm" method="post" action="adminMemberModifyAction.jsp">
			<table align="center" border="0" cellspacing="0" cellpadding="5" >
				<tr>
					<td align="center" valign="middle" bgcolor="#FFFFCC">
						<table border="1" cellspacing="0" cellpadding="2" align="center" width="600">
							<tr align="center" bgcolor="#996600">
								<td colspan="2"><b style="color: #FFFFFF"><%=mBean.getName() %>���� ������ ����(������)</b></td>
							</tr>
							<tr>
								<td width="20%">���̵�</td>
								<td width="80%"><input type="text" name="id" size="15" style="background-color: lightgray"
									value="<%=mBean.getId()%>" readonly></td>
							</tr>
							<tr>
								<td>�н�����</td>
								<td><input type="password" name="pass" size="15" 
									value="<%=mBean.getPass()%>"></td>
							</tr>
							<tr>
								<td>�̸�</td>
								<td><input type="text" name="name" size="15"
									value="<%=mBean.getName()%>"></td>
							</tr>
							<tr>
								<td>����</td>
								<td>��<input type="radio" name="sex" value="1"
									<%=mBean.getSex().equals("1") ? "checked" : ""%>> ��<input
									type="radio" name="sex" value="2"
									<%=mBean.getSex().equals("2") ? "checked" : ""%>>
								</td>
							</tr>
							<tr>
								<td>�������</td>
								<td><input type="text" name="birthday" size="6"
									value="<%=mBean.getBirthday()%>"> ex)830815</td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input type="text" name="email" size="30"
									value="<%=mBean.getEmail()%>"></td>
							</tr>
							<tr>
								<td>������ȣ</td>
								<td><input type="text" name="zipcode" size="7"
									value="<%=mBean.getZipcode()%>" > <input
									type="button" value="������ȣã��" onClick="zipCheck()"></td>
							</tr>
							<tr>
								<td>�ּ�</td>
								<td><input type="text" name="address" size="45" value="<%=mBean.getAddress()%>"></td>
							</tr>
							<tr>
								<td>���</td>
								<td>
									<%
										String list[] = { "���ͳ�", "����", "����", "��ȭ", "�" };
										String hobbys[] = mBean.getHobby();
										for (int i = 0; i < list.length; i++) {
											out.println("<input type=checkbox name=hobby ");
											out.println("value=" + list[i] + " "
													+ (hobbys[i].equals("1") ? "checked" : "") + ">"
													+ list[i]);
										}
									%>
								</td>
							</tr>
							<tr>
								<td>����</td>
								<td><select name=job>
										<option value="0">�����ϼ���.
										<option value="ȸ���">ȸ���
										<option value="����������">����������
										<option value="�����л�">�����л�
										<option value="�Ϲ��ڿ���">�Ϲ��ڿ���
										<option value="������">������
										<option value="�Ƿ���">�Ƿ���
										<option value="������">������
										<option value="����,���,������">����.���/������
										<option value="��,��,����,������">��/��/����/������
										<option value="�ֺ�">�ֺ�
										<option value="����">����
										<option value="��Ÿ">��Ÿ
								</select>
								<script>document.regFrm.job.value="<%=mBean.getJob()%>"</script>
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
								<input type="submit" value="�����Ϸ�"> &nbsp; &nbsp; 
								<input type="reset" value="�ٽþ���"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
	function memberModify(){

		location.href = "adminMemberModifyAction.jsp";

	}
	function memberModifyCancel(){

		location.href = "../index.jsp";

	}
</body>

</html>