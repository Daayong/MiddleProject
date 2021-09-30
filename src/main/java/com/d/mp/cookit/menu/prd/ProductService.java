package com.d.mp.cookit.menu.prd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	
	public int setInsert(ProductDTO productDTO) throws Exception{
		
		return productDAO.setInsert(productDTO);
	}
}
