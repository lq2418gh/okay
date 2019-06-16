package dkd.okay.system.util.tree;

import java.lang.reflect.Method;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import dkd.okay.business.baseinfo.bo.MaterialType;
import dkd.okay.business.baseinfo.bo.WarehouseTree;
import dkd.okay.system.bo.Role;
import dkd.okay.system.bo.User;
import dkd.okay.system.bo.UserAuthority;
import dkd.okay.system.bo.V_AuthTreeByUser;

/**
 * 生成树结构的工具
 * @author SY
 * 采用泛型 任何集合都只要继承Tree类 就可以使用这个工具 根据传进的不同实体 工具才用不同的方法的生成树
 * 
 * 
 * 注意！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
 * 这个类是大家共用的，由于暂时不完善，谁要改代码要标注自己的名字，不许动别人的代码，有问题及时沟通
 * 
 * 
 * 
 * 
 * @param <T>
 */

public class TreeUtil<T extends Tree> {

	public List<T> makeTree(List<T> list, Object obj) throws Exception{
		
		String id = null;//将实体id转换成树id
		String name = null;//将实体name转换成树name
		String levels=null;//层级
		String value= null;//code
		String className = "";
		if(list != null && !list.isEmpty()){
			className = list.get(0).getClass().getSimpleName();
			if(className.equals("WarehouseTree")){
				//王莹仓库管理
				id = "getId";
				name = "getName";
				levels = "getType";
			}else if(className.equals("MaterialType")){
				//张洋物资编码
				id = "getId";
				name = "getName";
				levels = "getLevels";
			}else if(className.equals("Company")){
				//王建
				id = "getCompanyId";
				name = "getCompanyName";
			}else if(className.equals("Dictionary")){
				//杜文军
				id = "getDicId";
				name = "getDicName";
				levels="getLevels";	
			}else if(className.equals("V_AuthTreeByUser")){
				//wangqian
				id="getAuthId";
				name="getAuthName";
				value="getAuthCode";
			}else if(className.equals("Authority")){
				//师悦
				id = "getAuthId";
				name = "getAuthName";
				value="getAuthCode";
			}else if(className.equals("UserAuthority")){
				//周渤涛
				id = "getAuthId";
				name = "getAuthName";
				value="getAuthCode";
			}else if(className.equals("Flowset")){
				id = "getRecord_id";
				name = "getWork_type";
				levels="getLevels";	
			}
		}
		for(T t:list){
			//通过泛型反射的方式 我们拿到实体类的id和name值  然后赋值给tree的id name
			Method methodId = t.getClass().getMethod(id);
			Method methodName = t.getClass().getMethod(name);
			if(StringUtils.isNotEmpty(value)){
				Method methodValue = t.getClass().getMethod(value);
				Object objectValue = methodValue.invoke(t);
				t.setValue((String)objectValue);
			}

			Object objectId = methodId.invoke(t);
			Object objectName = methodName.invoke(t);
			
			t.setId((String)objectId);
			t.setName((String)objectName);
			t.setUrl("javascript:nav('"+t.getId()+"','"+t.getName()+"')");//赋值节点点击url
			if(className.equals("Flowset")){
				Method methodLevels = t.getClass().getMethod(levels);
				Object objectLevels = methodLevels.invoke(t);
				t.setName((String)objectName+"("+objectLevels.toString()+")");
				t.setParentId("0");
			}else if(className.equals("MaterialType")){
				t.setUrl("javascript:nav('"+t.getId()+"','"+((MaterialType) t).getLevels()+"')");//赋值节点点击url
			}else if(className.equals("WarehouseTree")){
				t.setUrl("javascript:nav('"+t.getId()+"','"+((WarehouseTree) t).getType()+"')");//赋值节点点击url
			}else if(className.equals("Authority") && obj!= null){
				//如果传进来的是权限，要多做一步，用户有哪些权限，权限树对应的节点复选框要被选中
				//师悦
				if(obj.getClass().getSimpleName().equals("User")){
					List<UserAuthority> authorities = ((User) obj).getUserAuthorities();
					for(UserAuthority ua: authorities){
						if(t.getValue().equals(ua.getAuthCode())){
					    	t.setChecked(true);
					    	break;
						}
					}
				}
			}else if(className.equals("V_AuthTreeByUser") && obj!= null){
				//wangqian
				if(obj.getClass().getSimpleName().equals("Role")){
					List<V_AuthTreeByUser> authorities = ((Role) obj).getRoleAuthorities();
					for(V_AuthTreeByUser roleAuth: authorities){
						if(t.getId().equals(roleAuth.getAuthId())){
					    	t.setChecked(true);
					    	break;
						}
					}
				}
			}else if(className.equals("Dictionary")){
				//杜文军
				Method levelsName = t.getClass().getMethod(levels);
				Object objectlevels = levelsName.invoke(t);
				//专业需要建3级业务字典
				if(StringUtils.equals("2", objectlevels.toString())&&!t.getParentId().equals("89b8487d9fa14e35aa0ad8a6624243d5")){
					t.setUrl(null);
				}
			}
		}
		return list;
	}
	
}
