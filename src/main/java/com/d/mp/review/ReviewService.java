package com.d.mp.review;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.review.util.FileManager;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private FileManager fileManager;
	
	public void insertReview(ReviewDTO reviewDTO, MultipartFile[] multipartFile) throws Exception{
		String review_tag = reviewDTO.getReview_salty();
		review_tag += reviewDTO.getReview_easy();
		review_tag += reviewDTO.getReview_fresh();
		review_tag += reviewDTO.getReview_many();
		review_tag += reviewDTO.getReview_delicious();

		String review_txt = reviewDTO.getReview_txt();
		String review_tip = reviewDTO.getReview_tip();
		String arr[] = review_txt.split("\n");
		int index = 0;
		review_txt = "";
		for(String str: arr) {
			review_txt += str;
			if(++index < arr.length) {
				review_txt += "<br>";				
			}
		}
		arr = review_tip.split("\n");
		index = 0;
		review_tip = "";
		for(String str: arr) {
			review_tip += str;
			if(++index < arr.length) {
				review_tip += "<br>";				
			}
		}
			
		reviewDTO.setReview_tag(review_tag);
		reviewDTO.setReview_tip(review_tip);
		reviewDTO.setReview_txt(review_txt);
		
		/****** insertReview ******/
		reviewDAO.insertReview(reviewDTO);
		
		String realPath = servletContext.getRealPath("resources/upload/review/");
		for (MultipartFile obj:multipartFile) {
			if(!obj.isEmpty()) {
			String fileName = fileManager.fileSave(realPath, obj);
			ReviewFileDTO reviewFileDTO = new ReviewFileDTO();
			reviewFileDTO.setReview_id(reviewDTO.getReview_id());
			reviewFileDTO.setReview_file_name(fileName);
			reviewFileDTO.setReview_file_ori_name(obj.getOriginalFilename());
			
			/****** insertFile ******/
			reviewDAO.insertFile(reviewFileDTO);
			System.out.println("파일 업로드");
			}
		}
		
//		reviewDTO.getid("cart_id");
	}
	
	public List<ReviewDTO> getBestReviewList() throws Exception {
		return reviewDAO.getBestReviewList();
	}
	
	public List<ReviewDTO> getReviewList() throws Exception {
		return reviewDAO.getReviewList();
	}
	
	public List<FamilyReviewDTO> getFamilyReviewList() throws Exception {
		return reviewDAO.getFamilyReviewList();
	}
	
}
