package beans;

public class LoginBean {
    private String schoolId;
    public String getSchoolId() {
		return schoolId;
	}
	public void setSchoolId(String schoolId) {
		this.schoolId = schoolId;
		System.out.println(schoolId);
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
		System.out.println(password);
	}
	private String password;
    public LoginBean() {
    	
    }
}
