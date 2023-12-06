
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View teachers</title>
    <link href="css/view_teach.css" type="text/css" rel="stylesheet">
</head>
<body>
    <div class="root-div">
        <div class="main">
            <div class="head">
                <div class="head-content">
                    <h>Teachers Detailes</h>
                </div>
                
            </div>
            <div class="content">
                 <%
                DbQuery db = new DbQuery() ; 
               
                    ResultSet rs = db.viewFaculty() ; 
                    if(rs.next()){
                

            %>
                <table border="1" id="tab">
                    <thead>
                        <tr>
                            <th>SI no.</th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Phone no.</th>
                            <th>Department</th>
                            <th>salary</th>
                        </tr>
                    </thead>
                    <tbody style="height: 20px;">
                        
                        <%
                            int i = 0 ; 
                            do {
                            %>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rs.getString("facultyId")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("phone")%></td>
                            <td><%=rs.getString("DepartmentName")%></td>
                            <td><%=rs.getString("salary")%></td>
                        </tr>
                        <%  
                                i++ ; 
                            }while(rs.next()) ;
                            %>
                    </tbody>
                </table>
                    <%
                        }else{
                        %>
                        <h1>No data</h1>
                        <%
                            }
                            %>
            </div>
        </div>
    </div>
</body>
</html>