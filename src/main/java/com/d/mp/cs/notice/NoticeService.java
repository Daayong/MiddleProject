package com.d.mp.cs.notice;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.util.FileManager;
import com.d.mp.util.Pager;



@Service
public class NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private FileManager fileManager;
	
	public List<NoticeDTO> getNoticeList(Pager pager) throws Exception{
		//paging 처리
		Long totalCount = noticeDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		return noticeDAO.getNoticeList(pager);
	}
	
	public int setInsert(NoticeDTO noticeDTO, MultipartFile [] files) throws Exception{

		//1. 어느 폴더 /resources/upload/notice 
			String realPath = servletContext.getRealPath("/resources/upload/notice/");
			
			System.out.println(realPath);
				
			File file = new File(realPath);
				
			int result = noticeDAO.setInsert(noticeDTO);
				
			for(MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				NoticeFilesDTO noticeFilesDTO = new NoticeFilesDTO();
				noticeFilesDTO.setNotice_file_name(fileName);
				noticeFilesDTO.setNotice_file_ori_name(multipartFile.getOriginalFilename());
				noticeFilesDTO.setNotice_id(noticeDTO.getNotice_id());
				
					
				result = noticeDAO.setFile(noticeFilesDTO);
				}
		
		return result;
		 
	}
	
	public NoticeDTO getNoticeView(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getNoticeView(noticeDTO);
	}
	
	public int setDelete(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setDelete(noticeDTO);
	}
	
	public List<NoticeFilesDTO> getFile(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getFile(noticeDTO);
	}
	
	public int setFileDelete(NoticeFilesDTO noticeFilesDTO) throws Exception{
		
		String realPath = servletContext.getRealPath("/resources/upload/notice/");
		
		File file = new File(realPath, noticeFilesDTO.getNotice_file_name());
		fileManager.fileDelete(file);
		
		return noticeDAO.setFileDelete(noticeFilesDTO);
	}
	
}
