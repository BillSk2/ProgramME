package ProgramME;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class FrontOfficeDAO {

	/**
	 * This method is used to authenticate a student.
	 *
	 * @param username, String
	 * @param password, String
	 * @return Student, the Student object
	 * @throws Exception, if the credentials are not valid
	 */
	public FrontOffice authenticate(String username, String password) throws Exception {
		DB db = new DB();
		Connection con;
		String sql = "SELECT * FROM frontoffice WHERE username=? AND passwordd=?;";
		FrontOffice frontOffice;

		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();

			if(rs.next()){
				frontOffice = new FrontOffice(rs.getInt("FrontOfficeId"), rs.getString("username"), rs.getString("passwordd"));
				rs.close();
			    stmt.close();
			    db.close();
			    return frontOffice;
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


	public void insertStudent(Student student) throws Exception {
		DB db = new DB();
		Connection con;
		String sql = "INSERT student ( name, passwordd, surname, am, email, admissionyear, FrontOfficeId) VALUES(?,null,?,?,null,?,?)";
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);

			
			stmt.setString(1, student.getName());
			stmt.setString(2, student.getSurname());
			stmt.setString(3, student.getAm());
			stmt.setInt(4, student.getAdmissionYear());
			stmt.setInt(5, student.getFrontOfficeId());

			stmt.executeUpdate();

			stmt.close();
			db.close();

		} catch(Exception e) {
			db.close();
			throw new Exception(e.getMessage());
		}
	} //End of insertStudent


	public void insertCourse(Course course) throws Exception {
		DB db = new DB();
		Connection con;
		String sql = "INSERT course (CourseId, Coursename, semester, CourseTypeId, FrontOfficeId, professor, description) VALUES(?,?,?,?,?,?,?)";
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setInt(1, course.getCourseID());
			stmt.setString(2, course.getCourseName());
			stmt.setInt(3, course.getSemester());
			stmt.setInt(4, course.getCourseType());
			stmt.setInt(5, course.getFrontOfficeId());
			stmt.setString(6, course.getProfessor());
			stmt.setString(7, course.getDescription());

			stmt.executeUpdate();

			stmt.close();
			db.close();

		} catch(Exception e) {
			db.close();
			throw new Exception(e.getMessage());
		}
	}//End of insertCourse

	public List<Course> getCourses() throws Exception {
			Connection con = null;
			DB db = new DB();
			String sqlQuery = "SELECT * FROM ismgroup46.course; ";
			PreparedStatement stmt = null;
			ResultSet rs = null;


			List<Course> courses =  new ArrayList<Course>();
			try {
				con = db.getConnection(); //get Connection
				stmt = con.prepareStatement(sqlQuery);

				rs = stmt.executeQuery();
				while (rs.next()) {

					courses.add( new Course( rs.getInt("courseID"),rs.getString("courseName"),rs.getInt("semester"), rs.getInt("courseTypeId")) );

				}
				rs.close();
				stmt.close();
				db.close();

				return courses;
			} catch (Exception e) {

				throw new Exception(e.getMessage());
			} finally {

				if(con != null)
					con.close();

			}

	}//End of getCourss

	public void deleteTimeslots(int courseID) throws Exception {
		DB db = new DB();
		Connection con;
		String sqlDelete = "DELETE FROM coursetimetable WHERE CourseId=?;";
		try {
				con = db.getConnection();
				PreparedStatement stmtDelete = con.prepareStatement(sqlDelete);

				stmtDelete.setInt(1, courseID);

				stmtDelete.executeUpdate();
				stmtDelete.close();
				db.close();

		} catch(Exception e) {
				db.close();
				throw new Exception(e.getMessage());
		}
	}//End of deleteTimeslots

	public void insertTimeslot(int courseID, int timetableID) throws Exception {
			DB db = new DB();
			Connection con;
			String sqlInsert = "INSERT coursetimetable (CourseId, TimetableId) VALUES(?,?);";
			try {
				con = db.getConnection();
				PreparedStatement stmtInsert = con.prepareStatement(sqlInsert);

				stmtInsert.setInt(1, courseID);
				stmtInsert.setInt(2, timetableID);

				stmtInsert.executeUpdate();

				stmtInsert.close();
				db.close();

			} catch(Exception e) {
				db.close();
				throw new Exception(e.getMessage());
			}
	}//End of insertTimeslot

}