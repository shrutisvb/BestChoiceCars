<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.action-button {
	width: 100px;
	background: #27AE60;
	font-weight: bold;
	color: white;
	border: 0 none;
	border-radius: 1px;
	cursor: pointer;
	padding: 10px 5px;
	margin: 10px 5px;
}
</style>
<meta charset="ISO-8859-1">
<title>Brand-Cars</title>
</head>
<body bgcolor="tomato"><center>
<h1>Choose Brand to find Available Models</h1>
<form method="POST" action="/byPrice">    
        <table> 

         <tr>
						<h3>Choose price range to find available models</h3>
  <input type="radio" name="price"  value="below">  <5 lakh <br>
  <input type="radio" name="price" value="above">  5 lakh > <br>
  <br><p>
<input type="submit" class="submit action-button" value="FindYourCars">
<a href="/" class="btn btn-primary">Back</a>
</form><br>
          <tr>    
             
         
         </tr>    
        </table>    
       <form> </center>  
</body>
</html>