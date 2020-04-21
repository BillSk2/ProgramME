package ProgramME;

public class FrontOffice {

	private int id;
	private String username;
	private String password;

	/**
	 * Constructor
	 *
	 * @param id
	 * @param username
	 * @param string
	 */
	public FrontOffice(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
	}

	/* Getters & Setters */

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
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
	public void setPassword(String password) {
		this.password = password;
	}

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

	@Override
		public String toString() {
			return "User [username=" + username + "]";
	}
}