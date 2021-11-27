package com.example.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.MemberVO;
import com.example.service.MemberService;

@RestController
@RequestMapping("/api/*")
public class MemberRestController {
	
	
	private MemberService memberService;

	public MemberRestController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}
	
	
	@GetMapping(value = "/member/{id}", produces = { MediaType.APPLICATION_JSON_VALUE,
			MediaType.APPLICATION_XML_VALUE })
	public ResponseEntity<Map<String, Object>> getMember(@PathVariable("id") String id){
		
		MemberVO memberVO = memberService.getMemberById(id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", memberVO);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}

}
