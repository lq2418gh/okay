package dkd.okay.system.bo;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户信息表
 * @author SY
 * 
 */

public class UserInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String userInfoId;//用户信息id
	private String realName;//姓名
	private String workNo;//工号
	private String specialty;//专业
	private String position;//职位
	private int sex;//性别 1 男
	private String email;//私人邮箱
	private String workEmail;//工作邮箱
	private String phone;//私人电话
	private String workPhone;//工作电话
	private String tel;//座机
	private String address;//地址
	private String sign_password;//签名密码
	/*private byte[] sign_image;//签名图片*/
//	private MultipartFile pic;
	private Date createTime;//创建时间
	private Date lastLoginTime;//最后登录时间
	private String lastLoginIP;//最后登录ip
	private User user;//关联用户登录信息
	private Company company;//关联的机构信息
	private String HaiyangUserCode;//海洋Code
	private String 	GufenUserCode;//股份Code
	private String ifUser;//项目选角色时用
	
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
//	public MultipartFile getPic() {
//		return pic;
//	}
//	public void setPic(MultipartFile pic) {
//		this.pic = pic;
//	}
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
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
	public String getIfUser() {
		return ifUser;
	}
	public void setIfUser(String ifUser) {
		this.ifUser = ifUser;
	}
	@Override
	public String toString() {
		return "UserInfo [userInfoId=" + userInfoId + ", realName=" + realName
				+ ", workNo=" + workNo + ", specialty=" + specialty
				+ ", position=" + position + ", sex=" + sex + ", email="
				+ email + ", workEmail=" + workEmail + ", phone=" + phone
				+ ", workPhone=" + workPhone + ", tel=" + tel + ", address="
				+ address + ", sign_password=" + sign_password
//				+ ", sign_image=" + Arrays.toString(sign_image)+ ", pic="+ pic 
				+ ", createTime=" + createTime + ", lastLoginTime="
				+ lastLoginTime + ", lastLoginIP=" + lastLoginIP + ", user="
				+ user + ", company=" + company + ", HaiyangUserCode="
				+ HaiyangUserCode + ", GufenUserCode=" + GufenUserCode
				+ ", ifUser=" + ifUser + "]";
	}	
}
