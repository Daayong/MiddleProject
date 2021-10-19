package com.d.mp.event.winner;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.event.EventDTO;
import com.d.mp.event.EventFileDTO;

@Service
public class EventWinnerService {

	@Autowired
	public EventWinnerDAO eventWinnerDAO;
	
	//이벤트 글 목록 불러오기
		public List<EventWinnerDTO> getWinnerList() throws Exception{
			return eventWinnerDAO.getWinnerList();
		}
		
		
		//이벤트 글 작성
		public int setWinnerList(EventWinnerDTO eventWinnerDTO) throws Exception{
			
			
			int result = eventWinnerDAO.setWinnerList(eventWinnerDTO);
			
			return result;
		}
		

		
		//선택한 이벤트 페이지 조회
		public List<EventWinnerDTO> getWinnerView(EventWinnerDTO eventWinnerDTO) throws Exception{
			return eventWinnerDAO.getWinnerView(eventWinnerDTO);
		}
		
		//글 삭제
		public int setEventDelete(EventWinnerDTO eventWinnerDTO) throws Exception{
			return eventWinnerDAO.setEventDelete(eventWinnerDTO);
		}
		
	
}
