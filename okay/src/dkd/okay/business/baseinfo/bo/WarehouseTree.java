package dkd.okay.business.baseinfo.bo;

import dkd.okay.system.util.tree.Tree;

/**
 * 仓库树实体表
 * 
 * @author 王莹
 * 
 */
public class WarehouseTree extends Tree {

	private String type;
	
	private String parentId;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	@Override
	public String toString() {
		return "WarehouseTree [type=" + type + ", parentId=" + parentId + "]";
	}

	
}
