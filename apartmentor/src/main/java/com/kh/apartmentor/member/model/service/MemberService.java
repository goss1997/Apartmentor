package com.kh.apartmentor.member.model.service;

import java.util.HashMap;

import com.kh.apartmentor.member.model.vo.Member;

public interface MemberService {
	
	// 로그인
	Member loginMember(Member m);
	
	// 회원가입
	int insertMember(Member m);
	
	// 아이디 찾기
	Member findId(Member m);
	// 비밀번호 확인작업
	Member findPwd(Member m);
	// 비밀번호 변경
	int updatePwd(HashMap<String, String> map);

}
