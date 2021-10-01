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
	
	public int setInsert(ProductDTO productDTO, MultipartFile [] files) throws Exception{
		
		int result = productDAO.setInsert(productDTO);
		
		//1. 어느 폴더 /resources/upload/notice/
		String realPath = servletContext.getRealPath("/resources/upload/menu/" + productDTO.getPrd_name());
		System.out.println(realPath);
		
		File menu_file = new File(realPath);
		
		for(MultipartFile multipartFile:files) {
			String fileName = fileManager.fileSave(menu_file, multipartFile);
			System.out.println(fileName);
			ProductFilesDTO productFilesDTO = new ProductFilesDTO();
			productFilesDTO.setFileName(fileName);
			productFilesDTO.setOriName(multipartFile.getOriginalFilename());
			productFilesDTO.setPrd_code(productDTO.getPrd_code());
			
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
