package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SelectCommand {
	public static void main(String[] args) throws SQLException {
		//Create  a connection
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root","root");
		//Create a statement
		Statement st=con.createStatement();
		
		String query="select employee_id, first_name, last_name from employees limit 5";
		
		//Execute the query
		ResultSet rset=st.executeQuery(query);
		
		while(rset.next()) {
			int id=rset.getInt("employee_id");
			String fname=rset.getString("first_name");
			String lname=rset.getString("last_name");
			System.out.println(id+"|"+fname+"|"+lname);
			
		}
		
		//Close the connection
		con.close();
		System.out.println("Query executed");
	}
}
