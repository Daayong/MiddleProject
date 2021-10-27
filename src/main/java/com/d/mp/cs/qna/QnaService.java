package com.d.mp.cs.qna;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.member.MemberDTO;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	public int setFormcounselUpload(QnaDTO qnaDTO) throws Exception{
	
		return qnaDAO.setFormcounselUpload(qnaDTO);
	}
	
	public List<QnaDTO> getMyCounselList(MemberDTO memberDTO) throws Exception{
		return qnaDAO.getMyCounselList(memberDTO);
	}
	
	public int setDeleteMyCounsel(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.setDeleteMyCounsel(qnaDTO);
	}
	
	public List<QnaDTO> getMemberCounselList() throws Exception{
		return qnaDAO.getMemberCounselList();
	}
	
	public int setCounselComment(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.setCounselComment(qnaDTO);
	}
	
	public QnaDTO getOneCounselList(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.getOneCounselList(qnaDTO);
	}

}
