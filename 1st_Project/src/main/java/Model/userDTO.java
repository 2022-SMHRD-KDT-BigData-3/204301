package Model;

public class userDTO {

	public String nickname;
	public String age;
	public String city;
	public String preletter;
	public String nextletter;
	
	public userDTO(String nickname, String age, String city, String preletter) {
		this.nickname = nickname;
		this.age = age;
		this.city = city;
		this.preletter = preletter;
	}

	public userDTO(String nextletter) {
		super();
		this.nextletter = nextletter;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPreletter() {
		return preletter;
	}

	public void setPreletter(String preletter) {
		this.preletter = preletter;
	}

	public String getNextletter() {
		return nextletter;
	}

	public void setNextletter(String nextletter) {
		this.nextletter = nextletter;
	}
	
	
	
}
