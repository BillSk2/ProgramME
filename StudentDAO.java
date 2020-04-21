package ProgramME;

import java.sql.*;
import java.util.*;
import java.io.*;

	public class StudentDAO {

		 public Student authenticate(Student student1) throws Exception {
		 		DB db = new DB();
		 		Connection con;
		 		String sql = "SELECT * FROM ismgroup46.student WHERE am=?;";
		 		Student student = null;

		 		try {
		 			con = db.getConnection();
		 			PreparedStatement stmt = con.prepareStatement(sql);

		 			stmt.setString(1, student1.getAm());
		 			ResultSet rs = stmt.executeQuery();

		 			if(rs.next()){
		 				rs.close();
		 			    stmt.close();
		 			    db.close();
		 			    return student1;
		 			} else {
		 				rs.close();
		 				stmt.close();
		 				db.close();
		 			    throw new Exception("Wrong username or password");
		 		}
		 		}  catch(Exception e){
		 			   throw new Exception(e.getMessage());
		 		}

		 	} //End of authenticate

		 	public Student authenticatelogin(String am, String password) throws Exception {
					DB db = new DB();
					Connection con;
					String sql = "SELECT * FROM ismgroup46.student WHERE am=? AND passwordd=?;";
					Student student = null;

					try {
						con = db.getConnection();
						PreparedStatement stmt = con.prepareStatement(sql);
						stmt.setString(1, am);
						stmt.setString(2, password);
						ResultSet rs = stmt.executeQuery();

						if(rs.next()){
							student = new Student(rs.getString("name"), rs.getString("surname"), rs.getString("am"),rs.getString("email"),rs.getString("passwordd"));
							rs.close();
						    stmt.close();
						    db.close();
						    return student;
						} else {
							rs.close();
							stmt.close();
							db.close();
						    throw new Exception("Wrong am or password");
						}
						}  catch(Exception e){
							   throw new Exception(e.getMessage());
						}

			 } //End of authenticatelogin

		public void registerstudent(Student student) throws Exception {
		DB db = new DB();
		Connection con;
		String sql = "INSERT INTO ismgroup46.student (name, surname, am, email,passwordd) VALUES(?,?,?,null,null);";
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, student.getName());
			stmt.setString(2, student.getSurname());
			stmt.setString(3, student.getAm());

			stmt.executeUpdate();

			stmt.close();
			db.close();

		} catch(Exception e) {
			db.close();
			throw new Exception(e.getMessage());
		}
		}

		public boolean   studentvalues (Student student) throws Exception {
		DB db = new DB();
		Connection con;
		String sql = "UPDATE ismgroup46.student SET email=?,passwordd=? WHERE am=? ;";
		boolean k =false;
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, student.getEmail());
			stmt.setString(2, student.getPassword());
			stmt.setString(3, student.getAm());



			stmt.executeUpdate();
			k=true;

			stmt.close();
			db.close();
			return k;

		} catch(Exception e) {

			db.close();
			throw new Exception(e.getMessage());

		}
		} //End of studentvalues
		public ArrayList<Integer> getCoursesId(Student student) throws Exception {
						Connection con = null;
						DB db = new DB();
						String sqlQuery = "SELECT * FROM ismgroup46.studentcourse WHERE am=? ; ";
						PreparedStatement stmt;
						ResultSet rs = null;


						ArrayList<Integer> coursesid =  new ArrayList<Integer>();
						try {
							con = db.getConnection(); //get Connection
							stmt = con.prepareStatement(sqlQuery);
							stmt.setString(1, student.getAm());
							rs = stmt.executeQuery();
							while (rs.next()) {

								coursesid.add( rs.getInt("CourseId") );

							}
							rs.close();
							stmt.close();
							db.close();

							return coursesid;
						} catch (Exception e) {

							throw new Exception(e.getMessage());
						} finally {

							if(con != null)
								con.close();

						}

			}
			public List<Course> getCourses(ArrayList<Integer> coursesid) throws Exception {
					Connection con = null;
					DB db = new DB();
					String sqlQuery = "SELECT * FROM ismgroup46.course where CourseId=?; ";
					PreparedStatement stmt = null;
					ResultSet rs = null;
					List<Course> courses =  new ArrayList<Course>();

					try {
						for (int coursesid1:coursesid){
							con = db.getConnection(); //get Connection
							stmt = con.prepareStatement(sqlQuery);
							stmt.setInt(1,coursesid1);
							rs = stmt.executeQuery();
							while (rs.next()) {
								courses.add( new Course( rs.getInt("courseId"),rs.getString("Coursename"),rs.getInt("semester"), rs.getInt("courseTypeId")) );

							}
							rs.close();
							stmt.close();
							db.close();
						}

						return courses;
					} catch (Exception e) {

						throw new Exception(e.getMessage());
					} finally {

						if(con != null)
							con.close();

					}

			}

	}