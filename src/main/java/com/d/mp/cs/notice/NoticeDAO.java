package com.d.mp.cs.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	//file 첨부
	public int setFile(NoticeFilesDTO noticeFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFile", noticeFilesDTO);
	}
	
	
}
