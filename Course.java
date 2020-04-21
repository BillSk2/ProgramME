package ProgramME;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
/**
 * This class represents dmst's Courses
 *
 *
 *
 */
 public class Course {

	private int courseID;
	private String courseName;
	private int courseType;
	private int semester;
	private String professor;
	private String description;
	private int frontOfficeId;
	
	/** 
	*Constructor
	*without param
	*/
	
	

	/**
	 * Constructor
	 *
	 * @param courseName
	 * @param courseID
	 * @param CourseType
	 * @param semester
	 */
	public Course( int courseID, String courseName, int semester, int courseType) {

		this.courseID = courseID;
		this.courseName = courseName;
		this.semester = semester;
		this.courseType = courseType;


	}

	/**
		 * Constructor
		 *
		 * @param courseName
		 * @param courseID
		 * @param CourseType
		 * @param semester
		 * @param professor
		 * @param description
		 * @param frontOfficeId
		 */
		public Course(int courseID, String courseName, int semester, int courseType, String professor, String description, int frontOfficeId) {

			this.courseID = courseID;
			this.courseName = courseName;
			this.semester = semester;
			this.courseType = courseType;
			this.professor = professor;
			this.description = description;
			this.frontOfficeId = frontOfficeId;
	}
	

	/* Getters & Setters */

	/**
	 * @return the courseName
	 */
	 public String getCourseName() {
		return courseName;
	}

	/**
	 * @param courseName the courseName to set
	 */
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	/**
	 * @return the courseID
	 */
	 public int getCourseID() {
		return courseID;
	}

	/**
	 * @param courseID the courseID to set
	 */
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}

	/**
	 * @return the courseType
	 */
	 public int getCourseType() {
		return courseType;
	}

	/**
	 * @param courseType the courseType to set
	 */
	public void setCourseType(int courseType) {
		this.courseType = courseType;
	}

	/**
	 * @return the semester
	 */
	 public int getSemester() {
		return semester;
	}

	/**
	 * @param semester the semester to set
	 */
	public void setSemester(int semester) {
		this.semester = semester;
	}

	/**
	 * @return the professor
	 */
	public String getProfessor() {
		return professor;
	}

	/**
	 * @param semester the professor to set
	 */
	public void setProfessor(String professor) {
		this.professor = professor;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param semester the professor to set
	 */
	public void setDescription(int frontOfficeId) {
		this.frontOfficeId = frontOfficeId;
	}

	/**
	 * @return the description
	 */
	public int getFrontOfficeId() {
		return frontOfficeId;
	}

	/**
	 * @param semester the professor to set
	 */
	public void setFrontOfficeId(String description) {
		this.description = description;
	}

	


 }