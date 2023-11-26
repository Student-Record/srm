<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>add Student</title>
    <link href="css/add_student.css" rel="stylesheet">
</head>
<body>
    <div>
        <div class="head">
            <h id="h1">Add Student</h>
        </div>
        <div class="content">
            <div class="content-head">
                <h style="font-size: 30px; margin-left: 25px;"><u>Enter Student Detailes</u></h>
            </div>
            <div class="content-form">
                <div class="content-form-left">
                    <div class="content-form-data">
                        <form method="post">
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Student Name</td>
                                        <td><input type="text" id="name" name="name"></td>
                                    </tr>
                                    <tr>
                                        <td>Class Roll no</td>
                                        <td><input type="number" id="rollno" name="rollno"></td>
                                    </tr>
                                    <tr>
                                        <td>Date of birth</td>
                                        <td><input type="date" id="dob" name="dob"></td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>
                                            <input type="radio" name="gen" id="male">
                                            <label for="male">Male</label>
                                            <input type="radio" name="gen" id="female">
                                            <label for="female">Female</label>
                                            <input type="radio" name="gen" id="other">
                                            <label for="other">Other</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Phone number</td>
                                        <td><input type="number" id="phone" name="phone"></td>
                                    </tr>
                                    <tr>
                                        <td>Year</td>
                                        <td><select id="year" name="year">
                                            <option value="1">1st year</option>
                                            <option value="2">2nd Year</option>
                                            <option value="3">3rd year</option>
                                            <option value="4">4th Year</option>
                                        </select></td>
                                    </tr>
                                    <tr>
                                        <td>Student Department</td>
                                        <td><select id="department" name="department">
                                            <option value="101">CSE</option>
                                            <option value="102">EEE</option>
                                            <option value="103">Civil</option>
                                            <option value="104">EC</option>
                                            <option value="105">Mech</option>
                                            <option value="106">Chem</option>
                                        </select></td>
                                    </tr>
                                    <tr>
                                        <td>Student Admission number</td>
                                        <td><input type="text" id="addno" name="addno"></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" name="submit" value="submit"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <div class="content-form-right">
                    <!-- add image -->
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>

<%
    DbQuery dq=new DbQuery();
    if(request.getParameter("submit")!=null){
        String studname = request.getParameter("name") ; 
        String rollno = request.getParameter("rollno") ; 
        String dob = request.getParameter("dob") ; 
        String gender = request.getParameter("gen") ; 
        String phone = request.getParameter("phone") ; 
        String year = request.getParameter("year") ; 
        String department = request.getParameter("department") ;
        String admissionNo = request.getParameter("addno");
        
//        System.out.println(studname) ; 
//        System.out.println(rollno) ; 
//        System.out.println(dob) ; 
//        System.out.println(gender); 
//        System.out.println(phone) ; 
//        System.out.println(year) ; 
//        System.out.println(department); 
//        
        int i= dq.addStudent(studname,rollno,dob,gender,phone,year,department,admissionNo ) ;
        if ( i > 0 ){
            %>
            <script>
                alert("Successfully Registered") ; 
            </script>
            <%
        }
    }
%>