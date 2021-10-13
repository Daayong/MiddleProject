package com.d.mp.cs.faq;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
	
	public List<FaqDTO> getTypeList(FaqDTO faqDTO) throws Exception{
		return faqDAO.getTypeList(faqDTO);
	}
	
	
}
