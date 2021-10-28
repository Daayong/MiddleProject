package com.d.mp.board.util;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class BoardFileManager {
	
	
	//file save
	//파일 저장
	public String fileSave(File event_file,MultipartFile multipartFile, String event_subject, String f_kind) throws Exception {
		
		if(!event_file.exists()) {
			event_file.mkdirs();
		}
		
		
		//파일명 생성
		
		String ori_name = multipartFile.getOriginalFilename();
		String file_exp = ori_name.substring(ori_name.lastIndexOf("."));
		
		String fileName = "";
		
		if(f_kind.equals("main")) {
			
			fileName = event_subject + file_exp;
			
		}else {
			
			fileName = multipartFile.getOriginalFilename();
			
		}
		
		
		event_file = new File(event_file, fileName);
		
		FileCopyUtils.copy(multipartFile.getBytes(), event_file);
		
		//2. MultipartFile
		//multipartFile.transferTo(menu_file);
		
		return fileName;
	}

	//fileDelete
	public void fileDelete(File file) throws Exception{
		
		file.delete();
		
	}

}
