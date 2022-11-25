import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class CustomerJDBC {
	   private static final String url="jdbc:mysql://localhost:3306/cogniassignments";
	   private static final String username="root";
	   private static final String pass="root123";
	   private static final String insertQuery="INSERT INTO `cogniassignments`.`customers` (`cust_id`, `cust_name`, `cust_age`, `cust_adress`, `cust_income`, `cust_gender`) VALUES (?, ?, ?, ?, ?, ?)";
	   private static final String findByIdQuery="select * from customers where cust_id=?";
	   private static final String updateQuery="update customers set cust_name=?,cust_age=?,cust_adress=?,cust_income=?,cust_gender=? where cust_id=?";
	   private static final String deleteQuery="delete from customers where cust_id=?";
	   private static final String displayAllQuery="select * from customers";
	public  void insert() {
		try {
			Connection conn=DriverManager.getConnection(url,username,pass);
			PreparedStatement ps=conn.prepareStatement(insertQuery);
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter Customer id");
			int id=sc.nextInt();
			ps.setInt(1, id);
			System.out.println("Enter name");
			String custName=sc.next();
			ps.setString(2, custName);
			System.out.println("Enter age");
			int age=sc.nextInt();
			ps.setInt(3, age);
			System.out.println("Enter adress");
			String adress=sc.next();
			ps.setString(4, adress);
			System.out.println("Enter income");
			int income=sc.nextInt();
			ps.setInt(5, income);
			System.out.println("Enter gender,Type M for Male , F For Female, O for others");
			String gender=sc.next();
			ps.setString(6, gender);
			
			ps.execute();
			conn.close();
			
			System.out.println("SucessFully inserted Data......");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void delete() {
		Connection conn;
		try {
			conn = DriverManager.getConnection(url,username,pass);
			PreparedStatement ps=conn.prepareStatement(deleteQuery);
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter Customer id to be deleted");
			int id=sc.nextInt();
			ps.setInt(1, id);
			ps.execute();
			System.out.println("Customer with id:"+id+" deleted successfully");
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void update() {
		
		try {
			Connection conn=DriverManager.getConnection(url,username,pass);
			PreparedStatement ps=conn.prepareStatement(updateQuery);
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter Customer id to be updated");
			int id=sc.nextInt();
			System.out.println("Enter name");
			String custName=sc.next();
			ps.setString(1, custName);
			System.out.println("Enter age");
			int age=sc.nextInt();
			ps.setInt(2, age);
			System.out.println("Enter adress");
			String adress=sc.next();
			ps.setString(3, adress);
			System.out.println("Enter income");
			int income=sc.nextInt();
			ps.setInt(4, income);
			System.out.println("Enter gender,Type M for Male , F For Female, O for others");
			String gender=sc.next();
			ps.setString(5, gender);
			ps.setInt(6, id);
			
			ps.executeUpdate();
			conn.close();
			
			System.out.println("Customer with id:"+id+" updated successfully");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void findById() {
		Connection conn;
		try {
			conn = DriverManager.getConnection(url,username,pass);
			PreparedStatement ps=conn.prepareStatement(findByIdQuery);
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter Customer id for whom you want to fetch the details");
			int id=sc.nextInt();
			ps.setInt(1, id);
			ps.execute();
			ResultSet rs=ps.getResultSet();
		    while(rs.next()) {
		    	System.out.println("Customer id:"+rs.getInt("cust_id")+" Customer Name:"
		    +rs.getString("cust_name")+" Customer age:"+rs.getInt("cust_age")+
		    " Customer adress:"+rs.getString("cust_adress")+" Customer gender:"
		    +rs.getString("cust_gender")+" Customer income:"+rs.getInt("cust_income"));
		    }
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void findAll() {
		Connection conn;
		try {
			conn = DriverManager.getConnection(url,username,pass);
			Statement stmt=conn.createStatement();
			Scanner sc=new Scanner(System.in);
			ResultSet rs=stmt.executeQuery(displayAllQuery);
		    while(rs.next()) {
		    	System.out.println("Customer id:"+rs.getInt("cust_id")+" Customer Name:"
		    +rs.getString("cust_name")+" Customer age:"+rs.getInt("cust_age")+
		    " Customer adress:"+rs.getString("cust_adress")+" Customer gender:"
		    +rs.getString("cust_gender")+" Customer income:"+rs.getInt("cust_income"));
		    }
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
