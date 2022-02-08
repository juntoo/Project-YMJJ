package com.java.restaurant.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.java.aop.LogAspect;
import com.java.comments.dto.CommentsDto;
import com.java.member.dto.BookmarkDto;
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
    public int getCount(String rTtype) {
        // TODO Auto-generated method stub
        return sqlSessionTemplate.selectOne("boardCounttype", rTtype);
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
    public List<RestaurnatDto> restaurantList(int startRow, int endRow, String rTtype) {
        // TODO Auto-generated method stub
        HashMap<String, Object> hMap=new HashMap<String, Object>();
        hMap.put("startRow", startRow);
        hMap.put("endRow", endRow);
        hMap.put("rTtype", rTtype);
        
        return sqlSessionTemplate.selectList("boardListtype", hMap);
    }

	@Override
	public RestaurnatDto restaurantRead(String RTnumber) {
		// TODO Auto-generated method stub
		
		RestaurnatDto restaurnatDto=null;
		
		int check=sqlSessionTemplate.update("boardReadCount", RTnumber);
		LogAspect.logger.info(LogAspect.LogMsg + check);
		
		restaurnatDto=sqlSessionTemplate.selectOne("boardRead", RTnumber);
		
		return restaurnatDto;
	}
	
	
	@Override
	public int restaurantDeleteOk(String RTnumber) {
		sqlSessionTemplate.delete("Bdelete", RTnumber);
		sqlSessionTemplate.delete("Cdelete", RTnumber);
		sqlSessionTemplate.delete("Rdelete", RTnumber);
		sqlSessionTemplate.delete("CMdelete", RTnumber);
		
		return sqlSessionTemplate.delete("boardDelete", RTnumber);
	}
	    
	@Override
    public int restaurantUpdateOk(RestaurnatDto restaurnatDto) {
    	return sqlSessionTemplate.update("boardUpdate", restaurnatDto);
    }
    
    @Override
    public RestaurnatDto restaurantUpdateSelect(String RTnumber) {
    	return sqlSessionTemplate.selectOne("boardRead", RTnumber);
    }
    
    @Override
    public int update(RestaurnatDto restaurnatDto) {
    	return sqlSessionTemplate.update("restaurantUpdate", restaurnatDto);
    }    
    
	
	// 코멘츠
	
	@Override
	public int commentsWriteOk(CommentsDto comentsDto) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("commentsInsert", comentsDto);
	}
	
	

	@Override
	public int commentsGetCount() {
		int check = sqlSessionTemplate.selectOne("commentsCount");
		 LogAspect.logger.info(LogAspect.LogMsg + check);
		return check;
	}

	@Override
	public List<CommentsDto> commentList(int startRow, int endRow, String RTnumber) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> hMap=new HashMap<String, Object>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		hMap.put("RTnumber", RTnumber);
		
		return sqlSessionTemplate.selectList("commentsList", hMap);
	}
	
	@Override
	public RestaurnatDto selectrestaurant(String parameter) {
		return sqlSessionTemplate.selectOne("selectrestaurant", parameter);
	}
	@Override
	public int Update2(RestaurnatDto restaurnatDto) {
    	return sqlSessionTemplate.update("restaurantUpdate2", restaurnatDto);
	}


	
	// 북마크
	
	@Override
	public int bookMarkCheck(String rTnumber, String mid) {
		HashMap<String, Object> hMap=new HashMap<String, Object>();
		hMap.put("rTnumber", rTnumber);
		hMap.put("mid", mid);
		return sqlSessionTemplate.insert("markinsert", hMap);
	}

	@Override
	public int bookMarkDeleteOk(String Mid, String RTnumber) {
		// TODO Auto-generated method stub
		HashMap<String, Object> hMap=new HashMap<String, Object>();
		hMap.put("RTnumber", RTnumber);
		hMap.put("Mid", Mid);
		
		return sqlSessionTemplate.delete("markdelete", hMap);
	}

	@Override
	public int bookMarkSelect(String Mid, String RTnumber) {
		HashMap<String, Object> hMap=new HashMap<String, Object>();
		hMap.put("RTnumber", RTnumber);
		hMap.put("Mid", Mid);
		int check = sqlSessionTemplate.selectOne("selectbook", hMap);
		LogAspect.logger.info(LogAspect.LogMsg + check);
		return check;
	}

}
