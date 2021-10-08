package com.d.mp.cookit.menu.prd;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.util.FileManager;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	
	/* ================================================= 상품등록 ================================================= */
	
	
	public int setInsert(ProductDTO productDTO, List<MultipartFile> main_files, List<MultipartFile> slider_files) throws Exception{
		
		///////////////// start_date ~ end_date  /////////////////////////
		
		String start_date = productDTO.getProduct_start_date();
		String end_date = productDTO.getProduct_end_date();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		
		Date s_date = dateFormat.parse(start_date);
		Date e_date = dateFormat.parse(end_date);
		
		Calendar s_cal = Calendar.getInstance();
		Calendar e_cal = Calendar.getInstance();
		
		SimpleDateFormat foramt_cal = new SimpleDateFormat("yyyyMMdd");
		
		s_cal.setTime(s_date);
		e_cal.setTime(e_date);
		
		// 사이의 날짜를 담아둘 배열 arraylist 선언
		
		ArrayList<String> date_array = new ArrayList<String>();

		
		while(s_cal.compareTo(e_cal) != 1) {
			System.out.println(foramt_cal.format(s_cal.getTime()));
			date_array.add(foramt_cal.format(s_cal.getTime()));
			
			s_cal.add(Calendar.DATE, 1);
		}
		
		productDTO.setProduct_delivery_date(date_array);
		
		
		///////////////// 파일 처리 /////////////////////////
		
		int result = productDAO.setInsert(productDTO);
		System.out.println(productDTO.getProduct_id());
		
		String main_realPath = servletContext.getRealPath("/resources/upload/menu/main/" + productDTO.getProduct_id());
		String slider_realPath = servletContext.getRealPath("/resources/upload/menu/slider/" + productDTO.getProduct_id());
	
		File main_file_path = null;
		File slider_file_path = null;
		
		
		/* MultiPartFiles 버그성 아무것도 넣지 않아도 input에서 하나가 넘어오는걸로 되가지고 size 1 임 */
		if(main_files.size() < 2 && slider_files.size() < 2) {
			System.out.println("첨부된 파일이 없습니다.");
		}
		if(main_files.size() >= 2){
			main_file_path = new File(main_realPath);
			
			for(MultipartFile multipartFile:main_files) {
				String fileName = fileManager.fileSave(main_file_path, multipartFile);
				ProductFilesDTO productFilesDTO = new ProductFilesDTO();
				productFilesDTO.setProduct_file_name(fileName);
				productFilesDTO.setProduct_file_ori_name(multipartFile.getOriginalFilename());
				productFilesDTO.setProduct_id(productDTO.getProduct_id());
				productFilesDTO.setProduct_file_path("main");
				
				result = productDAO.setFile(productFilesDTO);
			}
		}
		if(slider_files.size() >= 2){
			slider_file_path = new File(slider_realPath);
			
			for(MultipartFile multipartFile:slider_files) {
				String fileName = fileManager.fileSave(slider_file_path, multipartFile);
				ProductFilesDTO productFilesDTO = new ProductFilesDTO();
				productFilesDTO.setProduct_file_name(fileName);
				productFilesDTO.setProduct_file_ori_name(multipartFile.getOriginalFilename());
				productFilesDTO.setProduct_id(productDTO.getProduct_id());
				productFilesDTO.setProduct_file_path("slider");
				
				result = productDAO.setFile(productFilesDTO);
			}
		}
		
		
		//////////////////////////////////////////////////////////////////////////////////////////////////
		
		return result;
	}
	
	/* ================================================= 상품등록 끝 ================================================= */
	
	
	
	
	// 등록된 상품들의 파일 가져오기
	public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
		return productDAO.getFile(productDTO);
	}
	
	// 등록된 상품들 가져오기
	public List<ProductDTO> getPrdList(ProductDTO productDTO) throws Exception{
		
		return productDAO.getPrdList(productDTO);
	}
	
	// 특정 id의 상품 하나 가지고 오기
	public ProductDTO getPrdOne(ProductDTO productDTO) throws Exception{
		
		return productDAO.getPrdOne(productDTO);
	}
	
	// 특정 id의 상품 하나 삭제하기
	public int deletePrdOne(ProductDTO productDTO) throws Exception{
		
		return productDAO.deletePrdOne(productDTO);
	}
}
