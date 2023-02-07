package bookstore.model;

public class User {
	
	private int userid;
	private String fullname;
	private String email;
	private String password;
	private String userProfileImage;
	
	public User(int userid, String fullname, String email, String password,String userProfileImage) {

		this.userid = userid;
		this.fullname = fullname;
		this.email = email;
		this.password = password;
		this.userProfileImage = userProfileImage;
	}

	public User() {

	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", fullname=" + fullname + ", email=" + email + ", password=" + password
				+ ", userProfileImage=" + userProfileImage + "]";
	}

	public String getUserProfileImage() {
		return userProfileImage;
	}

	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}
	
	
}
