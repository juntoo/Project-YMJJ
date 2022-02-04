package com.java.aboutjeju.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.aboutjeju.dto.AboutjejuDto;

@Component
public class AboutjejuDaoImp implements AboutjejuDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int LMinsert(AboutjejuDto aboutjejuDto) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("LMinsert",aboutjejuDto);
	}
}
