package dkd.okay.system.web.formmodel;

import org.springframework.web.multipart.MultipartFile;

/**
 * FILE
 * @author SY
 *
 */

public class FileForm {
	
	private MultipartFile file;
	private String file_type_code;
	private String des;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getFile_type_code() {
		return file_type_code;
	}

	public void setFile_type_code(String file_type_code) {
		this.file_type_code = file_type_code;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	@Override
	public String toString() {
		return "FileForm [file=" + file + ", file_type_code=" + file_type_code
				+ ", des=" + des + "]";
	}

	
	
}
