<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Brand-Cars</title>
</head>
<body bgcolor="tomato"><center>
<h1>Choose Brand to find Available Models</h1>
<form method="POST" action="/byBrand">    
        <table> 

         <tr>
						<td>Brand :</td>
						<td><select id="brand" name="brand" required>
								<option value="Hundai">Hundai</option>
								<option value="Honda">Honda</option>
								<option value="Tata">Tata</option>
								<option value="Maruti">Maruti</option>
								<option value="Suzuki">Suzuki</option>
						</select></td>

					</tr>
          <tr>    
             
          <td><input type="submit" class="submit action-button" value="Save" /></td>    
         </tr>    
        </table>    
       <form>  </center> 
</body>
</html>