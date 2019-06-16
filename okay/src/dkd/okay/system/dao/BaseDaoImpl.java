package dkd.okay.system.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import dkd.okay.system.util.page.Page;
import dkd.okay.system.util.spring.BeanUtils;

/**
 * 泛型DAO接口实现类
 * @author SY
 * @param <T>
 * @param <PK>
 */

public class BaseDaoImpl<T, PK extends Serializable>{
	
	@Autowired
	public SqlSession sqlSession; 
	
	/**
	 * sqlmap.xml定义文件中对应的SQLID
	 */
	
    public static final String SQLID_INSERT = "insert";  
    public static final String SQLID_UPDATE = "update";  
    public static final String SQLID_DELETE = "delete";  
    public static final String SQLID_SELECT_ALL= "selectAll";  
    public static final String SQLID_SELECT_PAGE= "selectByPage";  
    public static final String SQLID_SELECT_CONDITION= "selectByCondition";  
    public static final String SQLID_SELECT_PK = "selectByPk";  
    public static final String SQLID_COUNT  = "count";  
    public static final String SQLID_COUNT_PARAM = "countParam";  
    public static final String SQLID_INSERT_ROLEAUTH = "insertRoleAuth";  
    public static final String SQLID_SELECT_DIC_BY_CHINESE= "selectByChinese";
    public static final String SQLID_SELECT_DIC_BY_ENGLISH = "selectByEnglish"; 

	/**
	 * 获取泛型类型的实体对象类全名
	 */
    
	protected String getDefaultSqlNamespace() {
		Class<?> genericClass = BeanUtils.getGenericClass(this.getClass());
		return genericClass == null ? null : genericClass.getSimpleName();
	}

    /** 
     * 数据库方言，缺省为MYSQL 
     */  
    
    private String dbDialect = "MYSQL";  
  
    /** 
     * 数据库方言dbDialect的get方法 
     */  
    
    public String getDbDialect() {  
        return dbDialect;  
    }  
  
    /** 
     * 数据库方言dbDialect的set方法 
     * @throws Exception 
     */  
    
    public void setDbDialect(String dbDialect) throws Exception {  
        if (dbDialect == null || (!dbDialect.equals("MYSQL") && !dbDialect.equals("ORACLE")))  
            throw new Exception("错误的数据库方言设置：本系统只支持MYSQL和ORACLE");  
        this.dbDialect = dbDialect;  
    }  
    
    public int insert(T entity) {  
    	return sqlSession.insert(this.getDefaultSqlNamespace() + "." + SQLID_INSERT,  entity);    
    }  
    
    public int insertDateIsNull(T entity) {  
    	return sqlSession.insert(this.getDefaultSqlNamespace() + "." + "insertDateIsNull",  entity);    
    } 
    
    public int delete(PK primaryKey) {  
        int rows = sqlSession.update(this.getDefaultSqlNamespace() + "." + SQLID_DELETE, primaryKey);  
        return rows;  
    }  
    
    public int update(T entity) {  
        return sqlSession.update(this.getDefaultSqlNamespace() + "." + SQLID_UPDATE, entity);  
    }  
	
	public List<T> selectAll() {
    	return sqlSession.selectList(this.getDefaultSqlNamespace() + "." + SQLID_SELECT_ALL);  
	}

	public List<T> selectByPage(Page page) {
		return sqlSession.selectList(this.getDefaultSqlNamespace() + "." + SQLID_SELECT_PAGE, page);  
	}
	
	public List<T> selectByCondition(Map<String, Object> map) {
		return sqlSession.selectList(this.getDefaultSqlNamespace() + "." + SQLID_SELECT_CONDITION, map);  
	}
	
	@SuppressWarnings("unchecked")
	public T get(PK primaryKey) {  
        return (T) sqlSession.selectOne(this.getDefaultSqlNamespace() + "." + SQLID_SELECT_PK, primaryKey);  
    }

	public T load(PK primaryKey) throws Exception {
		@SuppressWarnings("unchecked")
		T t = (T)sqlSession.selectOne(this.getDefaultSqlNamespace() + "." + SQLID_SELECT_PK, primaryKey); 
		if (t == null)   
			throw new Exception("数据查询异常：无法查询出主键数据"); 
		return t;
	}

	public int count() { 
		 Integer count = (Integer) sqlSession.selectOne(this.getDefaultSqlNamespace()+ "." + SQLID_COUNT);
		 return count.intValue();  
	}

	public int count(Object param) { 
        Integer count = (Integer) sqlSession.selectOne(this.getDefaultSqlNamespace()+ "." + SQLID_COUNT_PARAM,param);
		return count.intValue();   
	}

	public int insertRoleAuth(String userId) {
		return sqlSession.insert(this.getDefaultSqlNamespace() + "." + SQLID_INSERT_ROLEAUTH,  userId);    
	}  
    
	public String selectDicByChinese(Map<String,String> map){
		return sqlSession.selectOne("Dictionary." + SQLID_SELECT_DIC_BY_CHINESE,map);
	}
	
	public String selectDicByEnglish(Map<String,String> map){
		return sqlSession.selectOne("Dictionary." + SQLID_SELECT_DIC_BY_ENGLISH,map);
	}
}
