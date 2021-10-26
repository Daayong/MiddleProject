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
import com.d.mp.cookit.menu.prd.ProductFilesDTO;

@Service
public class EventService {
	
	@Autowired
	private EventDAO eventDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private BoardFileManager fileManager;
	
	//이벤트 글 목록 불러오기
	public List<EventDTO> getEventList(EventDTO eventDTO) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("event", eventDTO);
		
		return eventDAO.getEventList(map);	
	}
	
	
	//이벤트 글 작성
	public int setEventList(EventDTO eventDTO, List<MultipartFile> main_files) throws Exception{
		int result = eventDAO.setEventList(eventDTO);

		System.out.println(eventDTO.getEvent_id());
		

		String main_realPath = servletContext.getRealPath("/resources/upload/event/main/" + eventDTO.getEvent_id());
		
	
		File main_file_path = null;
		
		
		// 파일 판단 인자
		String f_kind = "";
		
		/* MultiPartFiles 버그성 아무것도 넣지 않아도 input에서 하나가 넘어오는걸로 되가지고 size 1 임 */
		
		// 메인의 썸네일 이미지 넣는 파일 디렉토리
		
		if(main_files.size() >= 1){
			main_file_path = new File(main_realPath);
			
			f_kind = "main";
			
			for(MultipartFile multipartFile:main_files) {
				String fileName = fileManager.fileSave(main_file_path, multipartFile, eventDTO.getEvent_subject(), f_kind);
				EventFileDTO eventFileDTO = new EventFileDTO();
				eventFileDTO.setEvent_file_name(fileName);
				eventFileDTO.setEvent_file_ori_name(multipartFile.getOriginalFilename());
				eventFileDTO.setEvent_id(eventDTO.getEvent_id());
			
				
				result = eventDAO.setFile(eventFileDTO);
			}
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
	public List<EventFileDTO> getFile(EventDTO eventDTO) throws Exception{
		return eventDAO.getFile(eventDTO);
	}
	
}
