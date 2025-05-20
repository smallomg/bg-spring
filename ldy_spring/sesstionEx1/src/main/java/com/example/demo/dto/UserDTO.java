package com.example.demo.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class UserDTO {

	@NotBlank(message = "아이디는 필수 입력값입니다.")
	private String id;
	@NotBlank(message = "pw is null")
	@Size(min = 3, max = 10, message = "pw min 3, max 10")
	private String pw;
	private String name;
	private String role;
}
