package com.d.mp.cs.notice;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.board.util.BoardFileManager;
import com.d.mp.board.util.BoardPager;



@Service
public class NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private BoardFileManager fileManager;
	
	public List<NoticeDTO> getNoticeList(BoardPager pager) throws Exception{
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
				NoticeFileDTO noticeFilesDTO = new NoticeFileDTO();
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
	
	public List<NoticeFileDTO> getFile(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getFile(noticeDTO);
	}
	
	public int setFileDelete(NoticeFileDTO noticeFilesDTO) throws Exception{
		
		String realPath = servletContext.getRealPath("/resources/upload/notice/");
		
		File file = new File(realPath, noticeFilesDTO.getNotice_file_name());
		fileManager.fileDelete(file);
		
		return noticeDAO.setFileDelete(noticeFilesDTO);
	}
	
}
