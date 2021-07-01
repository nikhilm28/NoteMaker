<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="css/style.css">
        <style>
    @import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  font-family: 'Josefin Sans', sans-serif;
}
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text] {
  width: 120%;
  padding: 12px 20px;
  margin: 8px 15px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

#form{
    height: 500px;
    width: 650px;
    padding: 10px;
    margin: 0px auto;
    position: relative;
}

button:hover {
  opacity: 0.8;
}

.imgcontainer {
  text-align: center;
  margin: 15px 0 20px 0;
}
textarea {
    width: 120%;
  padding: 12px 20px;
  margin: 8px 15px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 20px;
}

.active {
  background-color: #04AA6D;
}

</style>    

    </head>
    <body>
        <div class="navbar">
            
           <a  href="index.jsp" style="float: left; font-weight: bolder; font-size:large "> <i class="fa fa-fw fa-address-book"></i>Note Taker</a>
            <a class="active" href="addnotes.jsp" style="float: right"> <i class="fa fa-fw fa-address-book"></i>Add Notes</a>
            <a  href="allnotes.jsp" style="float: right"> <i class="fa fa-fw fa-user"></i>Show Notes</a>
            <a  href="index.jsp" style="float: right"> <i class="fa fa-fw fa-home"></i>Home</a>
        
        </div>
        <div id="form">
    <form action="SaveNoteServlet" method="post">
        <div class="imgcontainer">
            <h2> Add Notes here..!</h2>
        </div>
        
        <div class="container">
            <table style="width: 80%">
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="title" required></td>
                </tr>
                <tr>
                    <td>Content</td>
                    <td><textarea name="content" rows="20" cols="35" required></textarea>
                </tr>
            </table>
                <button type="submit" >Add Note</button>

        </div>
    </form>
    
</div>
        
        
    </body>
</html>
