package com.java.other.dao;

import java.util.List;

import com.java.restaurant.dto.RestaurnatDto;

public interface OtherDao {

	List<RestaurnatDto> getRestaurnatList(String parameter);

	List<RestaurnatDto> selectRestaurnatList(String parameter);

}
