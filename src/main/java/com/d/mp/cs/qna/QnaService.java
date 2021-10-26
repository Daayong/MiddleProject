package com.d.mp.cs.qna;

import java.util.HashMap;

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
	

}
