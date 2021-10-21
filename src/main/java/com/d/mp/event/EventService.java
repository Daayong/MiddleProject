package com.d.mp.event;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.board.util.BoardFileManager;
import com.d.mp.board.util.BoardPager;

@Service
public class EventService {
	
	@Autowired
	private EventDAO eventDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private BoardFileManager fileManager;
	
	//이벤트 글 목록 불러오기
	public List<EventDTO> getEventList() throws Exception{

		return eventDAO.getEventList();	
	}
	
	
	//이벤트 글 작성
	public int setEventList(EventDTO eventDTO, MultipartFile files) throws Exception{
		int result = eventDAO.setEventList(eventDTO);

		if(files != null) {
		String realPath = this.servletContext.getRealPath("/resources/upload/event/" + eventDTO.getEvent_id());
		
		System.out.println(realPath);
		
		File file = new File(realPath);
		
		
		EventFileDTO eventFileDTO = new EventFileDTO();
				
		
			String fileName = fileManager.fileSave(files, file);
			
			
			eventFileDTO.setEvent_file_name(fileName);
			eventFileDTO.setEvent_file_ori_name(files.getOriginalFilename());
			eventFileDTO.setEvent_id(eventDTO.getEvent_id());

			result = eventDAO.setFile(eventFileDTO);
		}
		
		return result;
	}
	

	
	//선택한 이벤트 페이지 조회
	public EventDTO getEventView(EventDTO eventDTO) throws Exception{
		return eventDAO.getEventView(eventDTO);
	}
	
	//글 삭제
	public int setEventDelete(EventDTO eventDTO) throws Exception{
		return eventDAO.setEventDelete(eventDTO);
	}
	
	//등록된 파일 불러오기
	public EventFileDTO getFile(EventDTO eventDTO) throws Exception{
		return eventDAO.getFile(eventDTO);
	}
	
}
