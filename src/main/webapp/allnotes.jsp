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
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                width: 750px;
                height: auto;
                margin: auto;
                text-align: center;
                font-family: arial;
                padding-top: 15px;
                padding-bottom: 15px;
                padding-left: 15px;
                padding-right:  15px;
            }

            .card .container button {
                padding-top: 5px;
                border: none;
                outline: 0;
                padding: 12px;
                color: white;
                background-color: #04AA6D;
                text-align: center;
                cursor: pointer;
                width: 50%;
                font-size: 18px;
            }

            .card button:hover {
                opacity: 0.7;
            }

            .buttons {
                padding-top: 10px;
                cursor: pointer;
                padding-top: 15px;
                width: 200px;
                margin: 0 auto;
                display: inline;}

            .action_btn {
                padding-top: 10px;
                cursor: pointer;
                padding: 12px;
                width: 200px;
                margin: 0 auto;
                display: inline;}
            </style>
        </head>
        <body>
            <div class="navbar">

            <a  href="index.jsp" style="float: left; font-weight: bolder; font-size:large "> <i class="fa fa-fw fa-address-book"></i>Note Taker</a>
            <a href="addnotes.jsp" style="float: right"> <i class="fa fa-fw fa-address-book"></i>Add Notes</a>
            <a class="active"  href="allnotes.jsp" style="float: right"> <i class="fa fa-fw fa-user"></i>Show Notes</a>
            <a  href="index.jsp" style="float: right"> <i class="fa fa-fw fa-home"></i>Home</a>

        </div>

        <%
            Session s = FactoryProvider.getFactory().openSession();
            Query q = s.createQuery("from Note");
            List<Note> list = q.list();
            for (Note note : list) {
        %>

        <div class="card">


            <b> <%= note.getTitle()%></b>
            <p><%= note.getContent()%></p>


            <div class="buttons">
                <div class="action_btn">
                    <a href="DeleteServlet?noteid=<%= note.getId()  %> "><button name="submit" class="action_btn submit" type="submit" style="background-color: red;padding-top: 10px;">Delete</button>
                   </a>  
                    <a href="update.jsp?noteid=<%= note.getId()  %>"><button name="submit" class="action_btn cancel" type="submit" style="background-color: #04AA6D;padding-top: 10px;">Update</button>
             </a>
                </div>
            </div>
        </div>
        <%
            }

            s.close();
        %>
    </body>
</html>
