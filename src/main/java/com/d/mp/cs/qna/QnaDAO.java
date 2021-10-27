package com.d.mp.cs.qna;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.member.MemberDTO;

@Repository
public class QnaDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.d.mp.cs.qna.QnaDAO.";
	
	public int setFormcounselUpload(QnaDTO qnaDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFormcounselUpload", qnaDTO);
	}
	
	
	public List<QnaDTO> getMyCounselList(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMyCounselList", memberDTO);
	}
	
	public int setDeleteMyCounsel(QnaDTO qnaDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDeleteMyCounsel", qnaDTO);
	}
	
	public List<QnaDTO> getMemberCounselList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMemberCounselList");
	}

	public int setCounselComment(QnaDTO qnaDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setCounselComment", qnaDTO);
	}
	
	public QnaDTO getOneCounselList(QnaDTO qnaDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getOneCounselList", qnaDTO);
	}
	
}
