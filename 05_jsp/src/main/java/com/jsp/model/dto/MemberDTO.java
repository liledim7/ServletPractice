package com.jsp.model.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//lombok라이브러리
//1. lombok.jar파일 다운로드
//2. lombok설정 -> IDE도구 연동하기
//3. lombok이 제고하는 어노테이션이용해서 활용하기

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
//@RequiredArgsConstructor

public class MemberDTO {
//	@NonNull
	private String memberId;
	private String memberPwd;
	private String memberName;
	private int age;
	private String gender;
	private String email;
	private String phone;
	private String address;
	private String hobby;
	private Date enrollDate;
}
