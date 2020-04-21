package ProgramME ;

public class Student {

	private int id;
	private String name;
	private String surname;
	private String am;
	private String email;
	private String password;
	private int frontOfficeId;
	private int admissionYear;

	/**
	 * Constructor
	 *
	 * @param name
	 * @param surname
	 * @param am
	 * @param email
	 * @param password
	 */
	public Student(String name, String surname, String am, String email, String password) {

		this.name = name;
		this.surname = surname;
		this.am = am;
		this.email = email;
		this.password = password;

	}

	public Student(String name, String surname, String am, int frontOfficeId, int admissionYear) {

		
		this.name = name;
		this.surname = surname;
		this.am = am;
		this.frontOfficeId = frontOfficeId;
		this.admissionYear = admissionYear;

	}

	/* Getters & Setters */

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}


	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the surname
	 */
	public String getSurname() {
		return surname;
	}

	/**
	 * @param surname the surname to set
	 */
	public void setSurname(String surname) {
		this.surname = surname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPasswordd(String password) {
		this.password = password;
	}

	/**
	 * @return the am
	 */
	public String getAm() {
		return am;
	}

	/**
	 * @param am the am to set
	 */
	public void setAm(String am) {
		this.am = am;
	}

	/**
	 * @return the frontOfficeId
	 */
	public int getFrontOfficeId() {
		return frontOfficeId;
	}

	/**
	 * @param am the am to set
	 */
	public void setFrontOfficeId(int frontOfficeId) {
		this.frontOfficeId = frontOfficeId;
	}

	/**
	 * @return the admissionYear
	 */
	public int getAdmissionYear() {
		return admissionYear;
	}

	/**
	 * @param admissionYear the admissionYear to set
	 */
	public void setAdmissionYear(int admissionYear) {
		this.admissionYear = admissionYear;
	}


	@Override
	public String toString() {
		return "Student [name=" + name + ", surname=" + surname + ", email=" + email + ", am=" + am + "]";
	}


} //End of class
