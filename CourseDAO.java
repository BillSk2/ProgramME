package ProgramME;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CourseDAO {
	/**
	 * @param courseType
	 * @param semester
	 *This method returns a List with all the Courses from the given semester and courseType
	 *
	 * @return List<Course>
	 */

	 public List<Course> getCourses(int courseType, int semester) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sqlQuery = "SELECT * FROM ismgroup46.course WHERE CourseTypeId=? AND semester=? ; ";
		PreparedStatement stmt = null;
		ResultSet rs = null;


		List<Course> courses =  new ArrayList<Course>();
		try {
			con = db.getConnection(); //get Connection
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, courseType);
			stmt.setInt(2, semester);

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

	}
	/**
	*/
	public ArrayList<Integer> getProgramId(int courseid) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sqlQuery = "SELECT * FROM ismgroup46.coursetimetable where CourseId=?; ";
		PreparedStatement stmt = null;
		ResultSet rs = null;

			ArrayList<Integer> k = new ArrayList<Integer>();
			try {
				con = db.getConnection(); //get Connection
				stmt = con.prepareStatement(sqlQuery);
				stmt.setInt(1, courseid);

				rs = stmt.executeQuery();
				while (rs.next()) {

					k.add( rs.getInt("TimetableId") );

				}
				rs.close();
				stmt.close();
				db.close();

				return k;
			} catch (Exception e) {

				throw new Exception(e.getMessage());
			} finally {

				if(con != null)
				con.close();

			}

	}

	/**
	*@param ArrayList<Course>
	*This method inserts into the database the list of the checked courses
	*/

	public void checkedInsert (String [] courses, Student studentam) throws Exception {
		Connection con = null;
		DB db = new DB();
		String sqlQuery = "INSERT INTO ismgroup46.studentcourse(CourseId, am)" + " VALUES (?,?) ";

		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement (sqlQuery);

			for(String course:courses){
				// string to int
				int courseint = Integer.parseInt(course);
				//set values to the parameters
				stmt.setInt(1,courseint);
				stmt.setString(2,studentam.getAm());
				// execute Update(INSERT)
				stmt.executeUpdate();
			}
			stmt.close();
			db.close();
			con.close();
		} catch (Exception e) {

			throw new Exception(e.getMessage());
		} finally {

			if(con != null)
			con.close();

		}

	}
	
	public void delete(	Student student) throws Exception{
		Connection con = null;
		DB db = new DB();
		String sqlQuery = "DELETE FROM ismgroup46.studentcourse  WHERE am=? ; " ;

		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement (sqlQuery);

			
				//set values to the parameters
				stmt.setString(1,student.getAm());
				// execute Update(INSERT)
				stmt.executeUpdate();
			
			stmt.close();
			db.close();
			con.close();
		} catch (Exception e) {

			throw new Exception(e.getMessage());
		} finally {

			if(con != null)
			con.close();

		}
		
		
	}

}