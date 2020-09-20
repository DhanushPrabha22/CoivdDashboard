<%@ page import="java.sql.*"%>
<%@ page import="com.pc.DataSource"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
<%
String email = request.getParameter("email");  
String password = request.getParameter("password"); 
try{ 
    String sql = "select * from AdminData";
    Connection con = DataSource.getConnection();
   	PreparedStatement pst = con.prepareStatement(sql);
   	ResultSet rs = pst.executeQuery();
   	ResultSetMetaData rsmd = rs.getMetaData();
   	int f=0;
   	while (rs.next()) {
   		String email1 = rs.getString(1);
   		String password1 = rs.getString(2);
   		if(email.equals(email1) && password.equals(password1)){
   			f++;
%>
<h1>Welcome Admin!</h1>

<% 
break;
}
}
%>
<%
 if(f==0){
%>
<h1>Sorry! You are not an Admin.</h1>
<% 
}
pst.close();
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>