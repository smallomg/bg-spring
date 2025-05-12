package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.MemberDTO;

@Mapper
public interface IMemberDAO {

	MemberDTO instance(String id);
	List<MemberDTO> list();
}
