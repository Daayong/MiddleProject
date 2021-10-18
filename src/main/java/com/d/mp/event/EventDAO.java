package com.d.mp.event;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EventDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.d.mp.event.EventDAO.";
	
	
	//이벤트 list 불러오기
	public List<EventDTO> getEventList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getEventList");
	}
	
	public List<EventDTO> getWinnerList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getWinnerList");
	}
	
	//이벤트 글 작성
	
	public int setEventList(EventDTO eventDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setEventList", eventDTO);
	}

	public int setWinnerList(EventDTO eventDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setWinnerList", eventDTO);
	}
	
	//이벤트 세부사항 보기
	
	public List<EventDTO> getEventView(EventDTO eventDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getEventView", eventDTO);
	}
	
	//글삭제
	
	public int setEventDelete(EventDTO eventDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setEventDelete", eventDTO);
	}
	
	//파일 등록
	
	public int setFile(EventFileDTO eventFileDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFile", eventFileDTO);
	}
	
	//파일 가져오기
	
	public List<EventFileDTO> getFile(EventFileDTO eventFileDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getFile", eventFileDTO);
	}
	
}
