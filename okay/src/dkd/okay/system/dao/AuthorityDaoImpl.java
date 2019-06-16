package dkd.okay.system.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.Authority;

/**
 * 权限DAO接口实现类
 * @author wangqian
 *
 */

@Repository(value="authorityDao")
public class AuthorityDaoImpl extends BaseDaoImpl<Authority, String>{
	/**
	 *计算每页显示的数据数
	 * @param map
	 * @return
	 */
	public Integer queryByPageCount(Map<String,Object> map){
		return sqlSession.selectOne("Authority.queryByPageCount", map);
	}
	/**
	 * 获取权限表中的最大值
	 * @return
	 */
	public String queryMaxValue(){
		return sqlSession.selectOne("Authority.queryMaxValue");
	}
	public Integer selectByCode(Authority authority){
		return sqlSession.selectOne("Authority.selectByCode",authority);
	}
}