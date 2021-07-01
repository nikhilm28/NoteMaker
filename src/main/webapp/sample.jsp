<%-- 
    Document   : sample
    Created on : 1 Jul, 2021, 11:39:29 AM
    Author     : nikhil
--%>

<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="navbar">
            
            <a  href="index.jsp" style="float: left; font-weight: bolder; font-size:large "> <i class="fa fa-fw fa-address-book"></i>Note Taker</a>
            <a href="addnotes.jsp" style="float: right"> <i class="fa fa-fw fa-address-book"></i>Add Notes</a>
            <a  href="allnotes.jsp" style="float: right"> <i class="fa fa-fw fa-user"></i>Show Notes</a>
            <a class="active" href="#" style="float: right"> <i class="fa fa-fw fa-home"></i>Home</a>
        
        </div>
        <h1>Hello World!</h1>
        <% 
                Session s = FactoryProvider.getFactory().openSession();
                Query q = s.createQuery("from Note");
                List<Note> list = q.list();
                for(Note note:list)
                {
                    out.println(note.getId() + ":"+ note.getTitle()+"<br>");
                }
                
                s.close();
            %>
    </body>
</html>
