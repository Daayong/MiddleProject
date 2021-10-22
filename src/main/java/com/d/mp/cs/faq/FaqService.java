package com.d.mp.cs.faq;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.mp.board.util.BoardPager;


@Service
public class FaqService {
	
	@Autowired
	private FaqDAO faqDAO;
	
	
	//list 
	public List<FaqDTO> getList() throws Exception{
	
		
		return faqDAO.getList();
	}
	
	//insert
	public int setInsert(FaqDTO faqDTO) throws Exception{
		return faqDAO.setInsert(faqDTO);
	}
	
	public List<FaqDTO> getTypeList(Map<String, Object> m, FaqDTO faqDTO) throws Exception{
		return faqDAO.getTypeList(m,faqDTO);
	}
	
	public int setDelete(FaqDTO faqDTO) throws Exception{
		return faqDAO.setDelete(faqDTO);
	}
	
	
}
