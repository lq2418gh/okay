package dkd.okay.system.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import dkd.okay.system.bo.Dictionary;
import dkd.okay.system.bo.FileInfo;
import dkd.okay.system.dao.DictionartDaoImpl;
import dkd.okay.system.service.FileInfoServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.uuid.UUIDGenerator;
import dkd.okay.system.web.formmodel.FileInfoForm;

/**
 * 项目Controller
 * @author SY
 * 
 */

@Controller
@RequestMapping(value="/fileInfo")
public class FileInfoController extends BaseController  {
	
	@Resource(name="FileInfoService")
	private FileInfoServiceImpl fileInfoServiceImpl;
	
	@Resource(name="dictionaryDao")
	private DictionartDaoImpl dictionartDaoImpl;
	
	/**
	 * 分页查询文件信息
	 * @param message 操作提示
	 * @param model
	 * @param request
	 * @return
	 */
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/query.do")  
	public ModelAndView query(String url,String importNo,String file_module_code,String fk_id,
			String message,FileInfoForm fileInfoForm,String rurl,ModelMap model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		fileInfoForm.setFile_path((fileInfoForm.getFile_path()!=null)?fileInfoForm.getFile_path().trim():null);
		fileInfoForm.setINPUT_USERNAME((fileInfoForm.getINPUT_USERNAME()!=null)?fileInfoForm.getINPUT_USERNAME().trim():null);
		Map<String, Object> map = fileInfoServiceImpl.selectFileInfoByCondition_1(importNo,file_module_code,fk_id,pageNow,fileInfoForm);
		model.addAttribute("page", map.get("page"));
		model.addAttribute("fileInfos", map.get("fileInfos"));
		model.addAttribute("pageUrl", request.getServletPath());
		model.addAttribute("fileInfoForm", fileInfoForm);
		model.addAttribute("file_module_code", file_module_code);
		model.addAttribute("fk_id", fk_id);
		model.addAttribute("file_module_id", map.get("file_module_id"));//字典id
		model.remove("url");
		model.remove("rurl");
		if(url==null){
			url = request.getHeader("referer");
		}
		int param = url.indexOf(".do");
		if(param != -1){
			url = url.substring(0,param + 3);
		}
		model.addAttribute("url", url);//返回url
		if(rurl == null || "".equals(rurl)){
			rurl=request.getHeader("referer");
			int par = rurl.indexOf("&message");
			if(par !=-1){							
				rurl = rurl.substring(0,par);
			}			
			model.addAttribute("rurl", rurl);			
		}else{
			model.addAttribute("rurl", rurl);
		}
		return new ModelAndView("system/file/query",model);   
	}
	
	/**
	 * 上传文件页面
	 * @param file_module_code
	 * @param fk_id
	 * @param model
	 * @return
	 */
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/edit.do")  
	public ModelAndView edit(String url,String importNo,String file_module_code,String fk_id,
							 String rurl,ModelMap model,HttpServletRequest request){
		Dictionary dictionary = dictionartDaoImpl.queryByCode(file_module_code);
		FileInfoForm fileInfoForm = new FileInfoForm();
		fileInfoForm.setFile_module_code(file_module_code);
		if(null != dictionary && StringUtils.isNotEmpty(dictionary.getDicName())){
			fileInfoForm.setFile_module_name(dictionary.getDicName());
		}		
		fileInfoForm.setFk_id(fk_id);
		fileInfoForm.setImportNo(importNo);
		if(null != dictionary && StringUtils.isNotEmpty(dictionary.getDicId())){
			model.addAttribute("file_module_id", dictionary.getDicId());
		}			
		model.addAttribute("fileInfoForm", fileInfoForm);
		model.addAttribute("importNo", importNo);
		model.remove("url");
		model.remove("rurl");
		if(url==null){
			String url_ = request.getHeader("referer");
			int param = url_.indexOf(".do");
			if(param != -1){
				url_ = url_.substring(0,param + 3);
			}
			model.addAttribute("url", url_);//返回url
		}else{
			int param = url.indexOf(".do");
			if(param != -1){
				url = url.substring(0,param + 3);
			}
			model.addAttribute("url", url);//返回url
		}
		model.addAttribute("rurl",rurl);
		return new ModelAndView("system/file/edit",model);   
	}
	
	@Secured({ "ROLE_USER" })
	@RequestMapping("/save.do")  
	public ModelAndView save(String url,FileInfoForm fileInfoForm,String rurl,ModelMap model,HttpServletRequest request) throws IOException{
		String path = Common.ROOT_PATH + "\\" + fileInfoForm.getFile_module_code() + "\\";
		FileInfo fileInfo = new FileInfo();
		BeanUtils.copyProperties(fileInfoForm, fileInfo);
		List<MultipartFile> files = fileInfoForm.getFiles();
		String fileName;
		String realName;
		if(files != null && !files.isEmpty()){
			for(MultipartFile file : files){
				fileInfo.setFile_id(UUIDGenerator.getUUID());
				fileName = file.getOriginalFilename();
				realName = fileInfo.getFile_id()+"."+fileName.substring(fileName.lastIndexOf(".") + 1);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path, realName));
				fileInfo.setFile_path(fileName);
				fileInfo.setRealName(realName);
				fileInfoServiceImpl.saveFile(fileInfo);
			}
		}
		model.addAttribute("file_module_code", fileInfoForm.getFile_module_code());
		model.addAttribute("fk_id", fileInfoForm.getFk_id());
		model.addAttribute("importNo",fileInfoForm.getImportNo());
		model.remove("url");
		model.remove("rurl");
		int param = url.indexOf(".do");
		if(param != -1){
			url = url.substring(0,param + 3);
		}
		model.addAttribute("url", url);//返回url
		model.addAttribute("rurl",rurl);
		return new ModelAndView("redirect:query.do"); 
	}
	@Secured({ "ROLE_USER" })
	@RequestMapping("/del.do")  
	public ModelAndView del(String url,String file_module_code,String rurl,String fk_id,String file_id,ModelMap model,HttpServletRequest request){
		fileInfoServiceImpl.deleteFile(file_id);
		
		FileInfo fileInfo = fileInfoServiceImpl.selectFileById(file_id);
		String path = Common.ROOT_PATH + "\\" + fileInfo.getFile_module_code() + "\\";
        File file=new File(path + (StringUtils.isEmpty(fileInfo.getRealName()) ? fileInfo.getFile_path() : fileInfo.getRealName()));
        file.delete();
        
		model.addAttribute("file_module_code", file_module_code);
		model.addAttribute("fk_id", fk_id);
		model.remove("url");
		model.remove("rurl");
		int param = url.indexOf(".do");
		if(param != -1){
			url = url.substring(0,param + 3);
		}
		model.addAttribute("url", url);//返回url
		model.addAttribute("rurl",rurl);
		return new ModelAndView(new RedirectView("query.do")); 
	}
	
	@RequestMapping("/download.do")    
    public ResponseEntity<byte[]> download(String file_id,HttpServletRequest request) throws IOException { 
		FileInfo fileInfo = fileInfoServiceImpl.selectFileById(file_id);
		String path = Common.ROOT_PATH + "\\" + fileInfo.getFile_module_code() + "\\";
        File file=new File(path + (StringUtils.isEmpty(fileInfo.getRealName()) ? fileInfo.getFile_path() : fileInfo.getRealName()));  
        HttpHeaders headers = new HttpHeaders();    
        String fileName=new String(fileInfo.getFile_path().getBytes("gb2312"),"iso8859-1");//为了解决中文名称乱码问题  
        headers.setContentDispositionFormData("attachment", fileName);   
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);   
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers, HttpStatus.OK);    
    } 
}