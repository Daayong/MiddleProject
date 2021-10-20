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
	
	//글 추가
	public int setInsert(FaqDTO faqDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", faqDTO);
	}
	
	
	public Long getCount(BoardPager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	public List<FaqDTO> getTypeList(Map<String, Object> m, FaqDTO faqDTO) throws Exception{
		Object obj = m.get("faq_type");
		List<FaqDTO> ar = null;
		
		if(obj.equals("%전체%")) {
			ar = sqlSession.selectList(NAMESPACE+"getList", m);
		}else {
			ar = sqlSession.selectList(NAMESPACE+"getTypeList", faqDTO);
		}
		
		return ar;
	}
	
	
}
