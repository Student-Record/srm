
package Dbcon;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class DbQuery {
    Statement st,st1,st2;
    ResultSet rs,rs1,rs2;
    public DbQuery()
    {
        try {
            Dbcon db=new Dbcon();
            Connection con=db.getConnection();
            st=con.createStatement();
            st1=con.createStatement();
            st2=con.createStatement();
        } catch (Exception e) {
            System.err.println(e.toString());
        }
    }

    public int addStudent(String name , String rollno, String dob ,  String gender , String phone , String year , String departmentId, String admissionNo ){
        int i = 0 ;
        try{
            String str="INSERT INTO student(AdmissionNO,NAME,RollNo,DOB,Gender,phone,YEAR,DepartmentId) VALUES('"+admissionNo+"','"+name+"','"+rollno+"','"+dob+"','"+gender+"','"+phone+"','"+year+"','"+departmentId+"')";
            i = st.executeUpdate(str) ;
        }catch(Exception e){
            System.err.println(e.toString()) ;
        }
        return i ; 
    }
    
    public ResultSet login(String id,String password){
        try {
            String str="SELECT * FROM `faculty` WHERE facultyId='"+id+"' AND password='"+password+"'";
            rs=st.executeQuery(str);
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }

    public ResultSet viewCourse(String department , String year ){
        try{
            String str="SELECT * FROM course WHERE year='"+year+"' AND departmentId='"+department+"'" ; 
            rs= st.executeQuery(str) ; 
        }catch (Exception e){
            System.err.print(e.toString()) ; 
        }
        return rs ; 
    }
    
    public ResultSet viewStudent(){
        try{
            String str="SELECT * FROM student ORDER BY DepartmentId" ; 
            rs= st.executeQuery(str) ; 
        }catch (Exception e){
            System.err.print(e.toString()) ; 
        }
        return rs ; 
    }

      public ResultSet viewHod(){
        try{
            String str="SELECT HOD.id AS id ,HOD.departmentId AS dept,faculty.name AS NAME,faculty.phone AS phone , faculty.salary AS salary ,department.DepartmentName AS deptName FROM HOD,faculty,department WHERE HOD.id = faculty.facultyId AND department.DepartmentId = HOD.departmentId" ; 
            rs= st.executeQuery(str) ; 
        }catch (Exception e){
            System.err.print(e.toString()) ; 
        }
        return rs ; 
    }


}
