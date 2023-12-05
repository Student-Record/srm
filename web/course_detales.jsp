<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>course detailes</title>
    <link href="css/course_deatailes.css" rel="stylesheet">
</head>
<body>
    <div class="main-body">
        <div class="search">
           <form>
            <table class="tab">
                 <tbody>
                     <tr>
                         <td>Year</td>
                         <td>
                             <select class="select-box" id="year" name="year">
                                 <option value="1">1st year</option>
                                 <option value="2">2nd Year</option>
                                 <option value="3">3rd year</option>
                                 <option value="4">4th Year</option>
                            </select>
                         </td>
                     </tr>
                     <tr>
                         <td>Department</td>
                         <td>
                             <select class="select-box" id="dept" name="dept">
                                 <option value="101">CSE</option>
                                 <option value="102">EEE</option>
                                 <option value="103">Civil</option>
                                 <option value="104">EC</option>
                                 <option value="105">Mech</option>
                                 <option value="106">Chem</option>
                             </select>
                         </td>
                     </tr>
                     <tr>
                         <td></td>
                         <td><input type="submit" value="submit" name="submit" /></td>
                     </tr>
             </tbody>
            </table>
            </form>
        </div>
        
        <%
                DbQuery db = new DbQuery() ; 
                if(request.getParameter("submit")!= null ){
                    String year = request.getParameter("year"); 
                    String dept = request.getParameter("dept"); 
                    ResultSet rs = db.viewCourse(dept, year) ; 
                    if(rs.next()){
                

            %>
        <div class="list">
            <table border="1">
                <thead>
                    <th>SI No.</th>
                    <th>Course</th>
                    <th>Course Code</th>
                </thead>
                    <%
                        int i = 1; 
                        do{
                            %>
                  
                    <tr>
<!--                        <td></td>
                        <td></td>
                        <td></td>-->
                        <td><%=i%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("courseid")%></td>
                    </tr>
                    <%
                        i++;  
                    }while(rs.next()) ; 
                        %>
            </table>
            <% }else{
                %>
                <h1>No data</h1>
            <%
                }}
            %>
        </div>
    </div>
    
</body>
</html>