package com.d.mp.cookit.menu.prd;

import java.io.File;
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
	
	public int setInsert(ProductDTO productDTO, MultipartFile [] main_files, MultipartFile [] slider_files) throws Exception{
		
		int result = productDAO.setInsert(productDTO);
		System.out.println(productDTO.getProduct_id());
		
		//1. 어느 폴더 /resources/upload/notice/
		String main_realPath = servletContext.getRealPath("/resources/upload/menu/main/" + productDTO.getProduct_id());
		String slider_realPath = servletContext.getRealPath("/resources/upload/menu/slider/" + productDTO.getProduct_id());
		
		System.out.println(slider_realPath);
		
		File main_file_path = new File(main_realPath);
		File slider_file_path = new File(slider_realPath);
		
		for(MultipartFile multipartFile:main_files) {
			String fileName = fileManager.fileSave(main_file_path, multipartFile);
			System.out.println(fileName);
			ProductFilesDTO productFilesDTO = new ProductFilesDTO();
			productFilesDTO.setProduct_file_name(fileName);
			productFilesDTO.setProduct_file_ori_name(multipartFile.getOriginalFilename());
			productFilesDTO.setProduct_id(productDTO.getProduct_id());
			productFilesDTO.setProduct_file_path("main");
			
			result = productDAO.setFile(productFilesDTO);
		}
		
		for(MultipartFile multipartFile:slider_files) {
			String fileName = fileManager.fileSave(slider_file_path, multipartFile);
			System.out.println(fileName);
			ProductFilesDTO productFilesDTO = new ProductFilesDTO();
			productFilesDTO.setProduct_file_name(fileName);
			productFilesDTO.setProduct_file_ori_name(multipartFile.getOriginalFilename());
			productFilesDTO.setProduct_id(productDTO.getProduct_id());
			productFilesDTO.setProduct_file_path("slider");
			
			result = productDAO.setFile(productFilesDTO);
		}
		
		return result;
	}
	
	public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
		return productDAO.getFile(productDTO);
	}
	
	public List<ProductDTO> getPrdList() throws Exception{
		
		return productDAO.getPrdList();
	}
	
	public ProductDTO getPrdOne(ProductDTO productDTO) throws Exception{
		
		return productDAO.getPrdOne(productDTO);
	}
}
