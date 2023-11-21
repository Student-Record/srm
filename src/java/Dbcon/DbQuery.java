
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

}
