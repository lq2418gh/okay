package dkd.okay.business.budget.bo;

import org.springframework.web.multipart.MultipartFile;

/**
 * EXCLEFILE
 * @author 王莹
 *
 */

public class ExcleFileForm {
	
	private MultipartFile excle;

	public MultipartFile getExcle() {
		return excle;
	}
	public void setExcle(MultipartFile excle) {
		this.excle = excle;
	}
	
}
