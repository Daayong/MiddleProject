package com.d.mp.cookit.menu.prd.util;

import java.io.File;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ProductFileManager {
	
	//fileDelete
	public void fileDelete(File main_file, File slider_file) throws Exception{
		
		System.out.println(main_file.exists());
		System.out.println(slider_file.exists());
		
		if(main_file.exists()) {
			File [] main_folder_list = main_file.listFiles();
			
			for(int i=0; i<main_folder_list.length; i++) {
				main_folder_list[i].delete();
				System.out.println(main_folder_list[i]);
				System.out.println("파일이 삭제되었습니다!");
			}
			
			main_file.delete();
			
		}else {
			System.out.println("삭제할 파일이 없습니다.");
		}
		
		if(slider_file.exists()) {
			
			File [] slider_folder_list = slider_file.listFiles();

			for(int j=0; j<slider_folder_list.length; j++) {
				slider_folder_list[j].delete();
				System.out.println(slider_folder_list[j]);
				System.out.println("파일이 삭제되었습니다!");
			}
			
			slider_file.delete();
			
		}else {
			System.out.println("삭제할 파일이 없습니다.");
		}
		
		//main_file.delete();
		//slider_file.delete();
	}
		
	//fileSave
	//파일 저장
	
	public String fileSave(File menu_file, MultipartFile multipartFile, String product_name, String f_kind) throws Exception{
		
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
		
		String ori_name = multipartFile.getOriginalFilename();
		String file_exp = ori_name.substring(ori_name.lastIndexOf("."));
		
		String fileName = "";
		
		if(f_kind.equals("main")) {
			
			fileName = product_name + file_exp;
			
		}else {
			
			fileName = multipartFile.getOriginalFilename();
			
		}
		
		
		menu_file = new File(menu_file, fileName);
		//저장
		//1. FileCopyUtils
		FileCopyUtils.copy(multipartFile.getBytes(), menu_file);
		
		//2. MultipartFile
		//multipartFile.transferTo(menu_file);
		
		return fileName;
	}
}