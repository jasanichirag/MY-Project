<%@page import="com.Dao.NoteDao"%>
<%@page import="com.Entity.Note_Taker"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Notes...</title>
</head>
<body class="container-fluid p-0">
<%@include file="header.jsp" %>
<hr>
<div class="container">
<h1>All Notes:</h1>
<br>
<div class="row">
<div  class="col-12">
 <%
 List<Note_Taker>list=NoteDao.getAllNotes();
 for(Note_Taker n:list){
	 %>
	    <div class="card mt-3">
  <div class="card-header">
  <img alt="image" src="img/pencil.png" style="width: 40px;margin-right: 5px">
   <b> <%=n.getTitle() %></b>
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p><%=n.getContent() %></p>
      <footer class="blockquote-footer"><%=n.getAddedDate() %><cite title="Source Title" style="text-align: right;"></cite></footer>
    </blockquote>
    <form action="NoteController" name="deleteNote" method="post">
    <input type="hidden" name="nid" value="<%=n.getNid()%>">
    <div class="container text-center">
    <input type="submit" value="Delete Note" name="action" class="btn btn-danger" style="text-align: center;margin-top: 20px">
    <input type="submit" value="Edit Note" name="action" class="btn btn-primary" style="text-align: center;margin-top: 20px">
    </div>
    </form>
    </div>
</div>
	 <%
 }
 %>

</div>
</div>
</div>
</body>
</html>