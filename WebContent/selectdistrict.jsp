<%@ page import="java.sql.*"%>
<%@ page import="com.pc.DataSource"%>
<!DOCTYPE html>
<html>
<head>
<title>ReportPDF</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.3/jspdf.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
<script>
      function generatePDF() {
    	  var HTML_Width = $(".canvas_div_pdf").width();
  		var HTML_Height = $(".canvas_div_pdf").height();
  		var top_left_margin = 15;
  		var PDF_Width = HTML_Width+(top_left_margin*2);
  		var PDF_Height = (PDF_Width*1.5)+(top_left_margin*2);
  		var canvas_image_width = HTML_Width;
  		var canvas_image_height = HTML_Height;
  		
  		var totalPDFPages = Math.ceil(HTML_Height/PDF_Height)-1;
  		

  		html2canvas($(".canvas_div_pdf")[0],{allowTaint:true}).then(function(canvas) {
  			canvas.getContext('2d');
  			
  			console.log(canvas.height+"  "+canvas.width);
  			
  			
  			var imgData = canvas.toDataURL("image/jpeg", 1.0);
  			var pdf = new jsPDF('p', 'pt',  [PDF_Width, PDF_Height]);
  		    pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin,canvas_image_width,canvas_image_height);
  			
  			
  			for (var i = 1; i <= totalPDFPages; i++) { 
  				pdf.addPage(PDF_Width, PDF_Height);
  				pdf.addImage(imgData, 'JPG', top_left_margin, -(PDF_Height*i)+(top_left_margin*4),canvas_image_width,canvas_image_height);
  			}
  			
  		    pdf.save("Covid Data.pdf");
          });
  	}
</script>
<style>
button{
  display:block;
  width: 100%;
  padding: 15px;
  font-weight: 700;
  margin: 5px;
  color: #fff;
  background: #5d8ffc;
  border: 1px solid #5d8ffc;
  border-radius: 5px;
  text-transform: uppercase;
  cursor: pointer;
  transition:         0.08s ease-in;
  -moz-transition:    0.08s ease-in;
  -webkit-transition: 0.08s ease-in;
}
</style>
</head>
<body>
<%
String district = request.getParameter("value");  
%>
<button id="cmd" onclick="generatePDF()">Download as PDF</button>
<div class="canvas_div_pdf">
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
</div>
<div id="editor"></div>
</body>
</html>