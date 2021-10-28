package com.d.mp.cs.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.board.util.BoardPager;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.d.mp.cs.notice.NoticeDAO.";
	
	public List<NoticeDTO> getNoticeList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getNoticeList");
	}
	
	public int setInsert(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", noticeDTO);
	}
	
	public NoticeDTO getNoticeView(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getNoticeView", noticeDTO);
	}
	
	public int setDelete(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", noticeDTO);
	}
	
}
