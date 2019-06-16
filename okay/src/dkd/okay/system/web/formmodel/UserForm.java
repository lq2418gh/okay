package dkd.okay.system.web.formmodel;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import dkd.okay.system.bo.User;

/**
 * 用户Form
 * @author SY
 * 
 */

public class UserForm {
	
	private String userId;
	private String userName;
	private String passWord;
	private boolean isUse;
	private String userInfoId;
	private String realName;
	private String workNo;
	private String specialty;
	private String position;
	private int sex;
	private String email;
	private String workEmail;
	private String phone;
	private String workPhone;
	private String tel;
	private String address;
	private String sign_password;
//	private byte[] sign_image;
	private MultipartFile pic;
	private Date createTime;
	private Date lastLoginTime;
	private String lastLoginIP;
	private User user;
	private String HaiyangUserCode;//海洋Code
	private String 	GufenUserCode;//股份Code
	
	//修改密码时用
	private String newPassWord;
	
	public boolean isUse() {
		return isUse;
	}
	public void setUse(boolean isUse) {
		this.isUse = isUse;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getWorkNo() {
		return workNo;
	}
	public void setWorkNo(String workNo) {
		this.workNo = workNo;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkEmail() {
		return workEmail;
	}
	public void setWorkEmail(String workEmail) {
		this.workEmail = workEmail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWorkPhone() {
		return workPhone;
	}
	public void setWorkPhone(String workPhone) {
		this.workPhone = workPhone;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSign_password() {
		return sign_password;
	}
	public void setSign_password(String sign_password) {
		this.sign_password = sign_password;
	}
//	public byte[] getSign_image() {
//		return sign_image;
//	}
//	public void setSign_image(byte[] sign_image) {
//		this.sign_image = sign_image;
//	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getLastLoginIP() {
		return lastLoginIP;
	}
	public void setLastLoginIP(String lastLoginIP) {
		this.lastLoginIP = lastLoginIP;
	}
	
	public String getNewPassWord() {
		return newPassWord;
	}
	public void setNewPassWord(String newPassWord) {
		this.newPassWord = newPassWord;
	}
	public String getHaiyangUserCode() {
		return HaiyangUserCode;
	}
	public void setHaiyangUserCode(String haiyangUserCode) {
		HaiyangUserCode = haiyangUserCode;
	}
	public String getGufenUserCode() {
		return GufenUserCode;
	}
	public void setGufenUserCode(String gufenUserCode) {
		GufenUserCode = gufenUserCode;
	}
	@Override
	public String toString() {
		return "UserForm [userId=" + userId + ", userName=" + userName
				+ ", passWord=" + passWord + ", isUse=" + isUse
				+ ", userInfoId=" + userInfoId + ", realName=" + realName
				+ ", workNo=" + workNo + ", specialty=" + specialty
				+ ", position=" + position + ", sex=" + sex + ", email="
				+ email + ", workEmail=" + workEmail + ", phone=" + phone
				+ ", workPhone=" + workPhone + ", tel=" + tel + ", address="
				+ address + ", sign_password=" + sign_password
//				+ ", sign_image=" + Arrays.toString(sign_image)
				+ ", pic="
				+ pic + ", createTime=" + createTime + ", lastLoginTime="
				+ lastLoginTime + ", lastLoginIP=" + lastLoginIP + ", user="
				+ user + ", HaiyangUserCode=" + HaiyangUserCode
				+ ", GufenUserCode=" + GufenUserCode + ", newPassWord="
				+ newPassWord + "]";
	}
}