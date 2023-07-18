<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note...</title>
</head>
<body class="container-fluid ">
<div >
<%@include file="header.jsp" %>
<h1>Please Fill your Note Detail...</h1>
<br>
<hr>
<form action="NoteController" method="post" name="addNote">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control"  aria-describedby="emailHelp" placeholder="Note Title" required="required">
  </div>
  <div class="form-group">
    <label for="NoteContent">Note Content</label>
<textarea rows="4" cols="5" name="content" class="form-control" placeholder="Note Content" required="required"></textarea>
  </div>
  <div class="container text-center">
<input type="submit" name="action" value="Add Note" class="btn btn-primary">
</div>  
</form>



</div>
</body>
</html>