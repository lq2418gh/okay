package dkd.okay.system.util.page;


/**
 * 获得page对象工具
 * @author SY
 *
 */

public class PageUtil {
	
	private Page page = null;//初始为空 用于计算最大值

	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
	/**
	 * 获得page对象 用于分页
	 * @param pageNow
	 * @param totalCount
	 * @return
	 */
	
	public Page getPage(String pageNow,int totalCount){
		if (pageNow != null && Integer.parseInt(pageNow) !=0) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
		} else {
			page = new Page(totalCount, 1);		
		}
		return page;
	}
	
}
