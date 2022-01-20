package com.java.other.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.other.dao.OtherDao;


@Component
public class OtherServiceImp implements OtherService {
	@Autowired
	private OtherDao otherDao;
}
