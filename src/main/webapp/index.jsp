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
        <div class="container">
            <img src="img/notes.png" style="align-content: center">
                <a href="addnotes.jsp">Click to start with notes</a>
                
            </div>
    </body>
</html>
