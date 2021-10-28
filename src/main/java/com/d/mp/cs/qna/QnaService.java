package com.d.mp.cs.qna;


import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.board.util.BoardFileManager;
import com.d.mp.member.MemberDTO;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private BoardFileManager fileManager;
	
	public void setFormcounselUpload(QnaDTO qnaDTO, MultipartFile[] multipartFile) throws Exception{
		
		qnaDAO.setFormcounselUpload(qnaDTO);
		
		String realPath = servletContext.getRealPath("resources/upload/formCounsel/");
		for(MultipartFile obj:multipartFile) {
			if(!obj.isEmpty()) {
				String fileName = fileManager.boardFileSave(realPath, obj);
				QnaFileDTO qnaFileDTO = new QnaFileDTO();
				qnaFileDTO.setQna_id(qnaDTO.getQna_id());
				qnaFileDTO.setQna_file_name(fileName);
				qnaFileDTO.setQna_file_ori_name(obj.getOriginalFilename());
				
				qnaDAO.setFile(qnaFileDTO);
				System.out.println("파일 업로드 완료");
			}
		}
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
