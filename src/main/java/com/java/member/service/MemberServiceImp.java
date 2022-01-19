package com.java.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.member.dao.MemberDao;

@Component
public class MemberServiceImp implements MemberService {
	@Autowired
	private MemberDao memberDao;
}

