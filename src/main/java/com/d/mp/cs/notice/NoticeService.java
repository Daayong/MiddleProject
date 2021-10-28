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
	
	
	public List<NoticeDTO> getNoticeList() throws Exception{
		
		return noticeDAO.getNoticeList();
	}
	
	public int setInsert(NoticeDTO noticeDTO ) throws Exception{
						
		return  noticeDAO.setInsert(noticeDTO);
		 
	}
	
	public NoticeDTO getNoticeView(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getNoticeView(noticeDTO);
	}
	
	public int setDelete(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setDelete(noticeDTO);
	}
	
	
}
