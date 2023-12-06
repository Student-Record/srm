
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View student</title>
    <link href="css/view_teach.css" type="text/css" rel="stylesheet">
</head>
<body>
    <div class="root-div">
        <div class="main">
            <div class="head">
                <div class="head-content">
                    <h>Student Detailes</h>
                </div>
                
            </div>
             <%
                DbQuery db = new DbQuery() ; 
//                if(request.getParameter("submit")!= null ){
//                    String year = request.getParameter("year"); 
//                    String dept = request.getParameter("dept"); 
                    ResultSet rs = db.viewStudent() ; 
                    if(rs.next()){
                

            %>
            <div class="content">
                <table border="1" id="tab">
                    <thead style="font-size: 20px;">
                        <tr>
                            <th style="width: 3%;">SI no.</th>
                            <th style="width:18%;">Name</th>
                            <th style="width: 5%">Admission no.</th>
                            <th style="width: 10%;">Department</th>
                            <th style="width: 10%;">Year</th>
                            <th style="width: 10%;">DOB</th>
                            <th style=" width: 15%">Phone no.</th>
                        </tr>
                    </thead>
                    <tbody style="height: 20px; font-size: 15px;">
                        
                            <%
                                int i = 1 ;
                                do {
                                    
                                
                                %>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rs.getString("NAME")%></td>
                            <td><%=rs.getString("AdmissionNo")%></td>
                            <td><%=rs.getString("DepartmentId")%></td>
                            <td><%=rs.getString("YEAR")%></td>
                            <td><%=rs.getString("DOB")%></td>
                            <td><%=rs.getString("phone")%></td>
                        </tr>
                            <%
                               }while(rs.next()) ;
                                %>
                    </tbody>
                    <%
                        }else{
                            %>
                            <h1>no data</h1>
                            <%
                            }
                        %>
                </table>
            </div>
        </div>
    </div>
</body>
</html>