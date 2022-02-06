package com.java.restaurant.dao;

import java.util.HashMap;
import java.util.List;

import com.java.img.dto.ImgDto;
import com.java.restaurant.dto.RestaurnatDto;

public interface RestaurantDao {

	public int restaurantWriteOk(RestaurnatDto restaurnatDto);
	
	public int getCount();

    public List<RestaurnatDto> restaurantList(int startRow, int endRow);

	public RestaurnatDto restaurantRead(String RTnumber);
	
	public List<RestaurnatDto> restaurantMapList(String RTnumber);
	
	//public int imgWriteOk(ImgDto imgDto);
	

	
}
