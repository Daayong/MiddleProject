package com.d.mp.util;

import java.io.File;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManagerProduct {
	
	
	//fileSave
	//파일 저장
	
	public String fileSave(File menu_file, MultipartFile multipartFile) throws Exception{
		
		//파일명 생성
		/*
		 * String fileName = UUID.randomUUID().toString(); fileName = fileName + "_" +
		 * multipartFile.getOriginalFilename();
		 * 
		 * file = new File(file, fileName);
		 */
		
		if(!menu_file.exists()) {
			menu_file.mkdirs();
			System.out.println("폴더 생성완료");
		}else {
			System.out.println("이미 폴더가 있습니다.");
		}
		String fileName = multipartFile.getOriginalFilename();
		menu_file = new File(menu_file, fileName);
		//저장
		//1. FileCopyUtils
		FileCopyUtils.copy(multipartFile.getBytes(), menu_file);
		
		//2. MultipartFile
		//multipartFile.transferTo(menu_file);
		
		return fileName;
	}
}
