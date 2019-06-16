package dkd.okay.system.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dkd.okay.system.bo.FileInfo;

/**
 *文件信息DAO接口实现类
 * @author SY
 *
 */

@Repository(value="FileInfoDao")
public class FileInfoDaoImpl extends BaseDaoImpl<FileInfo, String>{
	public List<FileInfo> selectFileByReceiveNo(String receivingNo){
		return sqlSession.selectList("FileInfo.selectFileByReceiveNo",receivingNo);
	}
	public void updateByQuality(Map<String,Object> map){
		sqlSession.update("FileInfo.updateByQuality",map);
	}
	public List<FileInfo> selectFileByName(Map<String,Object> map){
		return sqlSession.selectList("FileInfo.selectFileByName",map);
	}
	public List<FileInfo> selectFileBySupplierId(Map<String,Object> map){
		return sqlSession.selectList("FileInfo.selectFileBySupplierId",map);
	}
	public List<FileInfo> selectByDeleteFile(Map<String,Object> map){
		return sqlSession.selectList("FileInfo.selectByDeleteFile",map);
	}
	public List<FileInfo> selectFileByNameAndModule(Map<String,Object> map){
		return sqlSession.selectList("FileInfo.selectFileByNameAndModule",map);
	}
	public List<FileInfo> selectFileByCodeAndPk(String pk_id){
		return sqlSession.selectList("FileInfo.selectFileByCodeAndPk",pk_id);
	}
	
}