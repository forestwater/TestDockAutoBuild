    
    <%@ page language="java" import="java.util.*" pageEncoding="gb2312" %>
    <%@ page import ="java.sql.*" %>
    <%@ page import="com.mysql.jdbc.Driver" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <b>HELLO WORLD!</b>
<%
  Connection conn = null;
  //�������ݿ�������
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   //���ݿ�����URL
   String url="jdbc:mysql://172.17.0.2:3306/mysql";
   //���ݿ��û���������
    String user="testuser";
   String  password="passw0rd";
    
// String user="root";
// String  password="my-secret-pw";
 //�������ݿ����ȡ��һ�����ݿ�����ֵ
   conn =  DriverManager.getConnection(url,user,password);
   
   out.print("ȡ��һ�����ݿ�����:\n");
   out.print(conn.toString());
   conn.close();
   %>
</body>
</html>