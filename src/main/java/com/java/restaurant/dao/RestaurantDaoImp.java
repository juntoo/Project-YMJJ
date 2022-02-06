package com.java.restaurant.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.aop.LogAspect;
import com.java.img.dto.ImgDto;
import com.java.restaurant.dto.RestaurnatDto;

@Component
public class RestaurantDaoImp implements RestaurantDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int restaurantWriteOk(RestaurnatDto restaurnatDto) {
		// TODO Auto-generated method stub
		
		return sqlSessionTemplate.insert("boardInsert", restaurnatDto);
	}
	
	@Override
    public int getCount() {
        // TODO Auto-generated method stub
        return sqlSessionTemplate.selectOne("boardCount");
    }
    
    @Override
    public List<RestaurnatDto> restaurantList(int startRow, int endRow) {
        // TODO Auto-generated method stub
        HashMap<String, Integer> hMap=new HashMap<String, Integer>();
        hMap.put("startRow", startRow);
        hMap.put("endRow", endRow);
        
        return sqlSessionTemplate.selectList("boardList", hMap);
    }

	@Override
	public RestaurnatDto restaurantRead(String RTnumber) {
		// TODO Auto-generated method stub
		
		RestaurnatDto restaurnatDto=null;
		
		int check=sqlSessionTemplate.update("boardReadCount", RTnumber);
		LogAspect.logger.info(LogAspect.LogMsg + check);
		
		restaurnatDto=sqlSessionTemplate.selectOne("boardRead", RTnumber);
		
		restaurantMapList(RTnumber);
		
		return restaurnatDto;
	}
	
	@Override
	public List<RestaurnatDto> restaurantMapList(String RTnumber){
		return sqlSessionTemplate.selectList("boardRead",RTnumber);
		
	}
    
    
	

//	@Override
//	public int imgWriteOk(ImgDto imgDto) {
//		// TODO Auto-generated method stub
//		
//		return sqlSessionTemplate.insert("insert", imgDto);
//	}
	
	
	
}
