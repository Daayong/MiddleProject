package com.d.mp.event.winner;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class EventWinnerDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.d.mp.event.winner.EventWinnerDAO.";
	
	//이벤트 list 불러오기
	public List<EventWinnerDTO> getWinnerList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getWinnerList");
	}

	//이벤트 글 작성
	
	public int setWinnerList(EventWinnerDTO eventWinnerDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setWinnerList", eventWinnerDTO);
	}
	
	//이벤트 세부사항 보기
	
	public EventWinnerDTO getWinnerView(EventWinnerDTO eventWinnerDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getWinnerView", eventWinnerDTO);
	}
	
	//글삭제
	
	public int setEventDelete(EventWinnerDTO eventWinnerDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setEventDelete", eventWinnerDTO);
	}
	
	
	
}
