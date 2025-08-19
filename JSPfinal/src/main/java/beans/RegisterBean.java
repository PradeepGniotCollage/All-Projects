package beans;

public class RegisterBean {
    private String name;
    private String schoolId;
    private String password;
    private String confirm_password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
        System.out.println(name);
    }

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

    public String getConfirm_password() {
        return confirm_password;
    }

    public void setConfirm_password(String confirm_password) {
        this.confirm_password = confirm_password;
        System.out.println(confirm_password);
    }
}
