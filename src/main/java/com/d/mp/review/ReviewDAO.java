package com.d.mp.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.d.mp.review.ReviewDAO.";

	public void insertReview(ReviewDTO reviewDTO) throws Exception{
		sqlSession.insert(NAMESPACE + "insertReview", reviewDTO);
	}
	public void insertFile(ReviewFileDTO reviewFileDTO) throws Exception{
		sqlSession.insert(NAMESPACE + "insertFile", reviewFileDTO);
	}
	
	public List<ReviewDTO> getBestReviewList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getBestReviewList");
	}
	
	public List<ReviewDTO> getReviewList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getReviewList");
	}
	
	public List<FamilyReviewDTO> getFamilyReviewList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getFamilyReviewList");
	}
	
}
