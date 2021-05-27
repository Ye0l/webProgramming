package ch10.web1;

public class LoginDTO_t {
	private String rentid;
	private String memberName;
	private String videoName;
	private String fee;
	private String rentDate;

	public LoginDTO_t(String rentid, String memberName, String videoName, String fee, String rentDate) {
		super();
		this.rentid = rentid;
		this.memberName = memberName;
		this.videoName = videoName;
		this.fee = fee;
		this.rentDate = rentDate;
	}

	public LoginDTO_t() {
		super();
	}

	public String getRentid() {
		return rentid;
	}

	public void setRentid(String rentid) {
		this.rentid = rentid;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}

	public String getRentDate() {
		return rentDate;
	}

	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}
}
