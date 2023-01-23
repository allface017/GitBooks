package dto;

public class Account {
	private int id;
	private String mail;
	private String password;
	private String name;
	private String salt;
	private String hashedPassword;
	public Account(int id, String mail, String password, String name,  String salt,
			String hashedPassword) {
		super();
		this.id = id;
		this.mail = mail;
		this.password = password;
		this.name = name;
		this.salt = salt;
		this.hashedPassword = hashedPassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getHashedPassword() {
		return hashedPassword;
	}
	public void setHashedPassword(String hashedPassword) {
		this.hashedPassword = hashedPassword;
	}
}
	