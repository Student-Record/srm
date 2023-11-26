
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

    

}
