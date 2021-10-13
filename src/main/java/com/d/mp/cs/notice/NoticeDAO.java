package com.d.mp.cs.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.board.util.boardPager;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.d.mp.cs.notice.NoticeDAO.";
	
	public List<NoticeDTO> getNoticeList(boardPager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getNoticeList", pager);
	}
	
	public Long getCount(boardPager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
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
	
	//file 첨부
	public int setFile(NoticeFilesDTO noticeFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFile", noticeFilesDTO);
	}
	
	public List<NoticeFilesDTO> getFile(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getFile", noticeDTO);
	}
	
	public int setFileDelete(NoticeFilesDTO noticeFilesDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setFileDelete", noticeFilesDTO);
	}
}
