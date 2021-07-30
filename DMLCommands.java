package mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DMLCommands {
	
	public static void main(String[] args) throws SQLException {
		//Create  a connection
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","root");
		//Create a statement
		Statement st=con.createStatement();
		
		//String query="insert into student values(4, 'John', 97)";
		//String query="update student set sname='smith' where sid=4";
		String query="delete from student where sid=4";
		
		//Execute the query
		st.execute(query);
		//Close the connection
		con.close();
		System.out.println("Query executed");
	}

}
