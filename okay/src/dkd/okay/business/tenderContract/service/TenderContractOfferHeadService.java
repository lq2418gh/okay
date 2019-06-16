package dkd.okay.business.tenderContract.service;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import dkd.okay.business.Constants;
import dkd.okay.business.baseinfo.bo.ExcleFileForm;
import dkd.okay.business.baseinfo.bo.Material;
import dkd.okay.business.baseinfo.serivce.MaterialService;
import dkd.okay.business.tenderContract.bo.TenderContractOfferDetail;
import dkd.okay.business.tenderContract.bo.TenderContractOfferHead;
import dkd.okay.business.tenderContract.bo.TenderContractSupplier;
import dkd.okay.business.tenderContract.dao.TenderContractOfferDetailDao;
import dkd.okay.business.tenderContract.dao.TenderContractOfferHeadDao;
import dkd.okay.system.bo.FileInfo;
import dkd.okay.system.service.FileInfoServiceImpl;
import dkd.okay.system.util.Common;
import dkd.okay.system.util.uuid.UUIDGenerator;

@Service(value="TenderContractOfferHeadService")
@Transactional
public class TenderContractOfferHeadService {
	@Autowired
	private MaterialService materialService;
	@Autowired
	private FileInfoServiceImpl fileInfoServiceImpl;
	@Autowired
	private TenderContractOfferDetailDao tenderContractOfferDetailDao;
	@Autowired
	private TenderContractDetailService tenderContractDetailService;
	@Autowired
	private TenderContractSupplierService tenderContractSupplierService;
	@Autowired
	private TenderContractOfferHeadDao tenderContractOfferHeadDao;
	/**
	 * 校验并保存报价上传表
	 * @throws IOException 
	 */
	public String saveExcle(ExcleFileForm excleFileForm,HttpServletRequest request) throws IOException{
		String validateExcleFile = this.checkExcel(excleFileForm.getValidateStr(),excleFileForm.getParentId(),excleFileForm.getExcle(),request);
		if(StringUtils.isNotEmpty(validateExcleFile))//校验上传文档
			return validateExcleFile;		
		return savePriceExcle(excleFileForm.getParentId(),excleFileForm.getExcle(),request);
	}
	
	/**
	 * 对Excel导入信息的校验
	 */
	public String checkExcel(String tender_no,String tender_contract,MultipartFile excle,HttpServletRequest request){
		XSSFWorkbook xwb = null;
		try{
			xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
		}catch(Exception e){
			e.printStackTrace();
			return "文件格式错误，请用2007版Excel！";
		}
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		if (sheet.getPhysicalNumberOfRows() <= 1)
			return "excel导入模版不符和要求";
		//第0行是标题行
		XSSFRow row1 = sheet.getRow(1);//第1行
		XSSFCell cell13 = row1.getCell(3);//招标号信息
		System.out.println("=======inviteNo=====1======="+tender_no);
		System.out.println("=======inviteNo=====2======="+Constants.getCellContent(cell13));
		if(!StringUtils.equals(Constants.getCellContent(cell13), tender_no)){
			return "导入的报价单的招标号与此单据不符,导入失败";
		}
		XSSFCell cell11 = row1.getCell(1);//投标人信息
		if(StringUtils.isNotEmpty(Constants.getCellContent(cell11))){
			if(tenderContractSupplierService.selectSupplierName(tender_contract,Constants.getCellContent(cell11)).size()<=0){
				return "导入的报价单的投标人不属于该招标的供应商,导入失败";
			}
		}else{
			return "导入的报价单的投标人不能为空,导入失败";
		}
		XSSFCell price;
		String content;
		BigDecimal priceNum;
		int num=tenderContractDetailService.selectMaterial(tender_contract).size();//查询物资的条数
		for(int j=5;j<=num+4;j++){
			if(StringUtils.isEmpty(Constants.getCellContent(sheet.getRow(j).getCell(1))) ||StringUtils.isEmpty(Constants.getCellContent(sheet.getRow(j).getCell(2)))){
				continue;
			}
			else{
				price = sheet.getRow(j).getCell(6);
				if(price.getCellType()!=XSSFCell.CELL_TYPE_NUMERIC && price.getCellType()!=XSSFCell.CELL_TYPE_FORMULA ){
					return "报价明细中单价格式有误";
				}else{
					content = Constants.getCellContent(price).trim(); 
					if(content != null && content.indexOf(".") != -1 && (content.length() - content.indexOf(".") > 3)){
						return "报价明细中单价格式有误，请输入两位小数";
					}
					priceNum = new BigDecimal(content);
					if(priceNum.compareTo(BigDecimal.ZERO) <= 0){
						return "报价明细中单价格式有误，请输入大于0的单价";
					}
				}
			}
		}
		return null;
	}
	/**
	 * 保存报价并保存文件
	 * @throws IOException 
	 */
	public String savePriceExcle(String tender_contract,MultipartFile excle,HttpServletRequest request) throws IOException{
		XSSFWorkbook xwb = null;
		try{
			xwb = new XSSFWorkbook(excle.getInputStream()); //生成一个表格对象
		}catch(Exception e){
			e.printStackTrace();
			return "文件格式错误，请用2007版Excel！";
		}
		XSSFSheet sheet = xwb.getSheetAt(0);//表
		if (sheet.getPhysicalNumberOfRows() <= 1)
			return "excel导入模版不符和要求";
		XSSFRow row = null;//行
		TenderContractOfferHead tenderContractOfferHead = null;
		TenderContractOfferDetail tenderContractOfferDetail = null;
		Material material = null;
		String materialId= null;
		int num=tenderContractDetailService.selectMaterial(tender_contract).size();//查询物资的条数
		TenderContractSupplier tenderContractSupplier = tenderContractSupplierService.selectSupplierIdAndId(tender_contract,sheet.getRow(1).getCell(1).getStringCellValue());//供应商信息
		TenderContractOfferHead tenderContractOfferHeadOne = tenderContractOfferHeadDao.selectByTenderAndSupplier(tender_contract,tenderContractSupplier.getSupplier(),tenderContractSupplier.getId());
		if(tenderContractOfferHeadOne!=null){
			//该供应商上传过报价 删除相关报价信息
			tenderContractOfferHeadDao.deleteByTenderAndSupplier(tender_contract,tenderContractSupplier.getSupplier(),tenderContractSupplier.getId());
			tenderContractOfferDetailDao.deleteTenderContractOfferHeadID(tenderContractOfferHeadOne.getId());
		}
		//保存文件
		String path =Common.ROOT_PATH+"\\module_tender\\";
		FileInfo fileInfo = new FileInfo();
		String file_id=UUIDGenerator.getUUID();
		fileInfo.setFile_id(file_id);
		String fileName = excle.getOriginalFilename();
		String realName = fileInfo.getFile_id()+"."+fileName.substring(fileName.lastIndexOf(".") + 1);
		FileUtils.copyInputStreamToFile(excle.getInputStream(), new File(path, realName));
		fileInfo.setFile_path(fileName);
		fileInfo.setRealName(realName);
		fileInfo.setFile_module_code("module_tender");
		fileInfo.setFile_module_name("招标合同模块");
		fileInfo.setImportNo(fileName.substring(3,fileName.indexOf(".")));
		fileInfo.setFk_id(tender_contract);
		fileInfoServiceImpl.saveFile(fileInfo);
		//保存报价主表
		tenderContractOfferHead = new TenderContractOfferHead();
		String id=UUIDGenerator.getUUID();
		tenderContractOfferHead.setId(id);//
		tenderContractOfferHead.setTender_contract(tender_contract);//主表id
		tenderContractOfferHead.setSupplier(tenderContractSupplier.getSupplier());//供应商id(有问题)
		tenderContractOfferHead.setTender_contract_supplier(tenderContractSupplier.getId());//框架招标供应商id
		tenderContractOfferHead.setFile_id(file_id);//设置id
		tenderContractOfferHeadDao.insert(tenderContractOfferHead);
		for(int j=5;j<=num+4;j++){
			row = sheet.getRow(j);
			XSSFCell cell1 = row.getCell(0); 
			
			XSSFCell cell2 = row.getCell(1);//物资编码
			XSSFCell cell7 = row.getCell(6);//价格
			if((cell2 == null || Constants.getCellContent(cell2).equals("")) 
				&& (cell7 == null || Constants.getCellContent(cell7).equals(""))){
				continue;
			}
			if(cell2!=null){
				if(StringUtils.isNotEmpty(cell2.getStringCellValue()))
					material= materialService.selectByCode(cell2.getStringCellValue());//查找物资的相关信息
					if(material == null)
						return row.getCell(2).getStringCellValue()+"物资不存在";
					else
						materialId = material.getId();//物资id
						tenderContractOfferDetail=new TenderContractOfferDetail();
						//保存报价明细表
						tenderContractOfferDetail.setId(UUIDGenerator.getUUID());
						tenderContractOfferDetail.setTender_detail(tenderContractDetailService.selectID(tender_contract,Constants.getCellContent(cell1)).getId());//根据物资id和主表id定位到招标明细表id
						tenderContractOfferDetail.setContract_Offer_head(id);
						tenderContractOfferDetail.setMaterial(materialId);
						tenderContractOfferDetail.setMain_Price(new BigDecimal(Constants.getCellContent(cell7).trim()));
						if(material.getConversion()!=null){
							tenderContractOfferDetail.setSecondary_Price(new BigDecimal(Double.parseDouble(Constants.getCellContent(cell7).trim())/material.getConversion()));
						}
						tenderContractOfferDetailDao.insert(tenderContractOfferDetail);
			}
			
		}
	return "上传成功！";
	}

	public List<TenderContractOfferHead> selectMaterialAndPrice(String id, String supplier) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("supplier", supplier);
		return tenderContractOfferHeadDao.selectMaterialAndPrice(map);
	}

	public List<TenderContractOfferHead> checkPrice(String id) {
		// TODO Auto-generated method stub
		return tenderContractOfferHeadDao.checkPrice(id);
	}


}
