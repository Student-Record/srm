
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link href="css/login.css" type="text/css" rel="stylesheet">
</head>
<body>
    <div class="login-div">
        <form action="">
            <table>
                <h1 style="text-align: center;">Login</h1>
                <tr>
                    <td></td>
                   <td><input type="text" placeholder="ID" name="ID"></td> 
                </tr>
                <tr>
                    <td></td>
                    <td><input type="password" placeholder="password" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit" name="submit">Login</button></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>



<%
    if(request.getParameter("submit")!=null)
    {
        String id=request.getParameter("ID");
        String passwd=request.getParameter("password");
        DbQuery db=new DbQuery();
        ResultSet rs=db.login(id,passwd);
        if(rs.next()){
            response.sendRedirect("admin.jsp");
        }else{
            %>
            <script>
                alert("invalid username or password");
            </script>
            <%
        }
    }
%>
