package com.web.member.model.dto;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {

	private String userId;
	private String passWord;
	private String userName;
	private char gender;
	private int age;
	private String email;
	private String phone;
	private String address;
	private String[] hobby;
	private Date enrollDate;
	
	@Override
	public String toString() {
		return userId+"$"+userName+"$"+age+"$"+gender+"$"+email+"$"+phone+"$"+address+"$"+Arrays.toString(hobby)+"$"+new SimpleDateFormat("yyyy-MM-dd").format(enrollDate);
	}
}
