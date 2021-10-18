package com.d.mp.event;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.board.util.BoardFileManager;

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
	
	public List<EventDTO> getWinnerList() throws Exception{
		return eventDAO.getWinnerList();
	}
	
	//진행중인 이벤트 글 작성
	public int setEventList(EventDTO eventDTO, MultipartFile [] files) throws Exception{
		String realPath = servletContext.getRealPath("/resources/upload/event/");
		
		File file = new File(realPath);
		
		int result = eventDAO.setEventList(eventDTO);
		
		for(MultipartFile multipartFile : files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			
			EventFileDTO eventFileDTO = new EventFileDTO();
			eventFileDTO.setEvent_file_id(eventDTO.getEvent_id());
			eventFileDTO.setEvent_file_name(fileName);
			eventFileDTO.setEvent_file_ori_name(multipartFile.getOriginalFilename());

			result = eventDAO.setFile(eventFileDTO);
		}
		
		return result;
	}
	
	//당첨자 발표 글 작성
	public int setWinnerList(EventDTO eventDTO, MultipartFile [] files) throws Exception{
		String realPath = servletContext.getRealPath("/resources/upload/event/");
		
		File file = new File(realPath);
		
		int result = eventDAO.setWinnerList(eventDTO);
		
		for(MultipartFile multipartFile : files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			
			EventFileDTO eventFileDTO = new EventFileDTO();
			eventFileDTO.setEvent_file_id(eventDTO.getEvent_id());
			eventFileDTO.setEvent_file_name(fileName);
			eventFileDTO.setEvent_file_ori_name(multipartFile.getOriginalFilename());

			result = eventDAO.setFile(eventFileDTO);
		}
		
		return result;
	}
	
	//선택한 이벤트 페이지 조회
	public List<EventDTO> getEventView(EventDTO eventDTO) throws Exception{
		return eventDAO.getEventView(eventDTO);
	}
	
	//글 삭제
	public int setEventDelete(EventDTO eventDTO) throws Exception{
		return eventDAO.setEventDelete(eventDTO);
	}
	
	//등록된 파일 불러오기
	public List<EventFileDTO> getFile(EventDTO eventDTO) throws Exception{
		return eventDAO.getFile(eventDTO);
	}
	
}
