package dkd.okay.system.util.spring;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * 对Bean进行操作的相关工具方法
 * @author sy
 *
 */
public class BeanUtils {

	/**
	 * 获取接口的泛型类型，如果不存在则返回null
	 * @param clazz
	 * @return
	 */
	
	public static Class<?> getGenericClass(Class<?> clazz) {
		Type t = clazz.getGenericSuperclass();
		if (t instanceof ParameterizedType) {
			Type[] p = ((ParameterizedType) t).getActualTypeArguments();
			return ((Class<?>) p[0]);
		}
		return null;
	}
	
}