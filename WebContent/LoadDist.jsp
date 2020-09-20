<%@ page import="java.sql.*"%>
<%@ page import="com.pc.DataSource"%>
<!DOCTYPE html>
<html>
<head>
<title>District Data</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
<%
String district = request.getParameter("dist-btn");
%>
<h1>All Covid Details for the District <%= district %></h1>
<table border="1">
<tr>
<td>Date</td>
<td>Confirmed</td>
<td>Deceased</td>
<td>Recovered</td>
</tr>
<%
try{ 
    String sql = "select * from CovidTNData where Location='"+district+"' order by Date ASC";
    Connection con = DataSource.getConnection();
   	PreparedStatement pst = con.prepareStatement(sql);
   	ResultSet rs = pst.executeQuery();
   	ResultSetMetaData rsmd = rs.getMetaData();
   	while (rs.next()) {
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
</tr>
<%
}
pst.close();
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>