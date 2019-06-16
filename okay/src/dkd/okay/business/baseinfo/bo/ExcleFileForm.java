package dkd.okay.business.baseinfo.bo;

import org.springframework.web.multipart.MultipartFile;

/**
 * EXCLEFILE
 * @author 周渤涛
 *
 */

public class ExcleFileForm {
	
	private MultipartFile excle;
	
	private String parentId;
	
	private String levels;

	private String validateFlag;
	
	private String validateStr;
	
	private String flieName;
	
	private String flieNameUrl;

	public MultipartFile getExcle() {
		return excle;
	}
	public void setExcle(MultipartFile excle) {
		this.excle = excle;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getLevels() {
		return levels;
	}
	public void setLevels(String levels) {
		this.levels = levels;
	}
	public String getValidateFlag() {
		return validateFlag;
	}
	public void setValidateFlag(String validateFlag) {
		this.validateFlag = validateFlag;
	}
	
	public String getValidateStr() {
		return validateStr;
	}
	public void setValidateStr(String validateStr) {
		this.validateStr = validateStr;
	}
	public String getFlieName() {
		return flieName;
	}
	public void setFlieName(String flieName) {
		this.flieName = flieName;
	}
	public String getFlieNameUrl() {
		return flieNameUrl;
	}
	public void setFlieNameUrl(String flieNameUrl) {
		this.flieNameUrl = flieNameUrl;
	}
	
}
