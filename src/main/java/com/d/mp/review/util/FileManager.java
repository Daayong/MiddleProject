package com.d.mp.review.util;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	public String fileSave(String realPath, MultipartFile multipartFile) throws Exception {
		
		String fileName = "";
		fileName += UUID.randomUUID().toString();
		fileName += "_" + multipartFile.getOriginalFilename();

		File file = new File(realPath + fileName);
			
//		FileCopyUtils.copy(i.getBytes(), file);
		multipartFile.transferTo(file);
		
		return fileName;
	}
	
}
