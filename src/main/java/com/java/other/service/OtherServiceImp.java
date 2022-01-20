package com.java.other.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.java.aop.LogAspect;
import com.java.other.dao.OtherDao;


@Component
public class OtherServiceImp implements OtherService {
	@Autowired
	private OtherDao otherDao;
	
	@Override
	public void getKakaoApiFromAddress(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
	    String apiKey = "107f86367749cb499142949423825b5c";
	    String apiUrl = "https://dapi.kakao.com/v2/local/search/address.json";
	    String roadFullAddr = (String) map.get("roadFullAddr");
	    try {
	        roadFullAddr = URLEncoder.encode(roadFullAddr, "UTF-8");

	        String addr = apiUrl + "?query=" + roadFullAddr;

	        URL url = new URL(addr);
	        URLConnection conn = url.openConnection();
	        conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);

	        BufferedReader rd = null;
	        rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
	        StringBuffer docJson = new StringBuffer();

	        String line;

	        while ((line=rd.readLine()) != null) {
	            docJson.append(line);
	        }
			mav.addObject("docJson", docJson);
	        rd.close();

	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    } catch (MalformedURLException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		mav.setViewName("other/map");
	}
}
