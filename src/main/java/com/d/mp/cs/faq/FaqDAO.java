package com.d.mp.cs.faq;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.board.util.BoardPager;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private HttpSession httpSession;
	
	private String NAMESPACE="com.d.mp.cs.faq.FaqDAO.";
	
	//list 목록
	public List<FaqDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public Long getCount(BoardPager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	//글 추가
	public int setInsert(FaqDTO faqDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", faqDTO);
	}
	
	
	public List<FaqDTO> getTypeList(FaqDTO faqDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getTypeList", faqDTO);
	}
	
	public int setDelete(FaqDTO faqDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", faqDTO);
	}
	
	
}
