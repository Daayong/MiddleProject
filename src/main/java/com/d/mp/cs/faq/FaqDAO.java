package com.d.mp.cs.faq;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private String NAMESPACE="com.d.mp.cs.faq.FaqDAO.";
	
	//list 목록
	public List<FaqDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
}
