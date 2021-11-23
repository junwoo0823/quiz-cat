package com.example.mapper;

import java.util.List;

import com.example.domain.AttachVO;

public interface AttachMapper {

	// =================== select ======================
	List<AttachVO> getAttachesByBoardNum(int boardNum);
	
	List<AttachVO> getAttachesByUuid(List<String> uuidList);
	
	// =================== insert ======================
	void addAttaches(List<AttachVO> attachList);
	
	// =================== update ======================
	
	
	// =================== delete ======================
	void deleteAttachesByUuidList(List<String> uuidList);
	
	void deleteAttachesByBoardNum(int boardNum);
}
