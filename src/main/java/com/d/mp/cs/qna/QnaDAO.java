package com.d.mp.cs.qna;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.d.mp.cs.qna.QnaDAO.";
	
	public int setFormcounselUpload(QnaDTO qnaDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFormcounselUpload", qnaDTO);
	}
	
	
	
}
