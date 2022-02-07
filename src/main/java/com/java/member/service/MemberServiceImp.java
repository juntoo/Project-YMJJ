package com.java.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.java.aop.LogAspect;
import com.java.member.dao.MemberDao;
import com.java.member.dto.BookmarkDto;
import com.java.member.dto.MemberDto;
import com.java.member.dto.SimpleReviewDto;

@Component
public class MemberServiceImp implements MemberService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public void memberJoinOk(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		MemberDto memberDto = (MemberDto) map.get("memberDto");
		LogAspect.logger.info(LogAspect.LogMsg+memberDto.toString());
		int check = memberDao.insert(memberDto);
		LogAspect.logger.info(LogAspect.LogMsg+check);
		
		mav.addObject("check", check);
		mav.setViewName("member/joinOk.tiles");
	}
	@Override
	public void memberIdCheck(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String Mid=request.getParameter("Mid");
		
		int check=memberDao.idCheck(Mid);
		LogAspect.logger.info(LogAspect.LogMsg + check);
		
		mav.addObject("Mid", Mid);
		mav.addObject("check", check);
		mav.setViewName("member/ID_Check.empt");
	}
	@Override
	public void memberLoginOk(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String Mid=request.getParameter("Mid");
		String Mpassword=request.getParameter("Mpassword");
		MemberDto memberDto = memberDao.LoginOk(Mid, Mpassword);
		mav.addObject("memberDto", memberDto);
		mav.setViewName("member/loginOk.tiles");
	}
	@Override
	public void MypageAcc(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session=request.getSession();
		String Mid=(String) session.getAttribute("Mid");
		
		MemberDto memberDto=memberDao.selectMid(Mid);
		//LogAspect.logger.info(LogAspect.LogMsg + memberDto.toString());
		
		mav.addObject("memberDto", memberDto);
		
		mav.setViewName("member/Mypage-Acc.tiles");
	}
	@Override
	public void MypageM(ModelAndView mav) {
		List<MemberDto> memberList=null;
		int count=memberDao.getCount();
		if(count > 0) {
			memberList = memberDao.memberList();
			LogAspect.logger.info(LogAspect.LogMsg + memberList.size());
		}
		mav.addObject("count", count);
		mav.addObject("memberList", memberList);
		
		mav.setViewName("member/Mypage-M.tiles");		
	}
	@Override
	public void MypageMD(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String Mid=request.getParameter("Mid");
		MemberDto memberDto=memberDao.selectMid(Mid);
		mav.addObject("memberDto", memberDto);
		
		mav.setViewName("member/Mypage-M-D.tiles");		
	}
	@Override
	public void Delelt(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int check=memberDao.delete(request.getParameter("Mid"));
		mav.addObject("check", check);

		mav.setViewName("member/Mdelete.tiles");	
	}
	@Override
	public void Updata(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		MemberDto memberDto = (MemberDto) map.get("memberDto");
		int check=memberDao.update(memberDto);
		mav.addObject("check", check);
		
		mav.setViewName("member/updateOk.tiles");	
	}
	@Override
	public void MypageCom(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		LogAspect.logger.info(LogAspect.LogMsg+request.getParameter("Mid"));
		List<SimpleReviewDto> reviewList=null;
		List<BookmarkDto> BookmarkList=null;		
		reviewList = memberDao.getReview(request.getParameter("Mid"));
		BookmarkList = memberDao.getBook(request.getParameter("Mid"));
		mav.addObject("reviewList", reviewList);
		mav.addObject("BookmarkList", BookmarkList);

		mav.setViewName("member/Mypage-Com.tiles");
	}
	@Override
	public void bookmarkAdd(ModelAndView mav) {
	Map<String, Object> map = mav.getModelMap();
	HttpServletRequest request = (HttpServletRequest) map.get("request");
	int check = memberDao.Markinsert(request.getParameter("Mid"),request.getParameter("RTnumber"));
	mav.addObject("check", check);
	mav.setViewName("member/Mypage-Com.tiles");	
	}
	@Override
	public void bookmarkDel(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int check = memberDao.MarkDel(request.getParameter("Mid"),request.getParameter("RTnumber"));
		mav.addObject("check", check);
		mav.setViewName("member/Bdelete.tiles");
	}
}

