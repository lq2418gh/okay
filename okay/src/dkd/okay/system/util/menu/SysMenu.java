package dkd.okay.system.util.menu;

import java.io.Serializable;
import java.util.List;

/**
 * 菜单实体类
 * @author sy
 *
 */

public class SysMenu implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String cname;//名称
	private String url;//url
	private String authority;//需要权限
	private String icon;//图标
	private String order;//序号
	private List<SysMenu> items;//菜单子集

	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public List<SysMenu> getItems() {
		return items;
	}
	public void setItems(List<SysMenu> items) {
		this.items = items;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
