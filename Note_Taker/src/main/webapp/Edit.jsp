<%@page import="com.Entity.Note_Taker"%>
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
<%
if(request.getAttribute("note")!=null){
	Note_Taker n=(Note_Taker)request.getAttribute("note");
	%>
	
<form action="NoteController" method="post" name="editNote">
<input type="hidden" value="<%=n.getNid()%>" name="nid">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" value="<%=n.getTitle() %>" aria-describedby="emailHelp" placeholder="Note Title" required="required">
  </div>
  <div class="form-group">
    <label for="NoteContent">Note Content</label>
<textarea rows="4" cols="5" name="content" class="form-control"  placeholder="Note Content" required="required"><%=n.getContent() %>"</textarea>
  </div>
  <div class="container text-center">
<input type="submit" name="action" value="update" class="btn btn-primary">
</div>  
</form>
	<%
}
%>



</div>
</body>
</html>