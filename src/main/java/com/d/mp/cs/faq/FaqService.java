package com.d.mp.cs.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FaqService {
	
	@Autowired
	private FaqDAO faqDAO;
	
	
	public List<FaqDTO> getList() throws Exception{
		return faqDAO.getList();
	}
}
