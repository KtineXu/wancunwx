package com.chemguan.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chemguan.entity.PageBean;
import com.chemguan.entity.Users;
import com.chemguan.service.UsersService;
import com.chemguan.tool.Phonesend;
import com.chemguan.tool.Tools;

@Controller
public class UsersController {
	
	@Resource
	UsersService uService;
	@Resource
	Tools tools;
	
	/**
	 *查询所有用户 
	 */
	@RequestMapping("findAllUsers.do")
	public String findAllUsers(HttpServletResponse response,HttpServletRequest request){
//		private int currentPage;//当前页码
//		private int recordCount;//总记录数
//		private int pageSize;//一页显示多少条数据
//		private List recordList;//页面要显示的数据集合
		int currentPage = 1;
		if(null !=request.getParameter("currentPage")){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("start", (currentPage-1)*4);
		List<Users> uList = uService.findAllUsers();
		int recordCount = uList.size();
		int pageSize = 4;
		List<Users> recordList = uService.findByPageBean(map);
		PageBean pb = new PageBean(currentPage, recordCount, pageSize, recordList);
		request.setAttribute("pageBean", pb);
		return "chemguanpanel/users.jsp";
		
	}
	
	/**
	 * 
	 *添加用户 
	 * @throws Exception 
	 */
	@RequestMapping("addUsers.do")
	public String addUsers(HttpServletResponse response,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		String openID = (String) session.getAttribute("openID");
		Users use = uService.findUsersByoppId(openID);
		if(use==null){
			response.sendRedirect("https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx38b32f527759debd&redirect_uri=http%3A%2F%2Fxiguashu.jiriweb.com%2FgetUser.do&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect");
		}
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		
		use.setMobile(mobile);
		use.setAddress(address);
		use.setProvince(province);
		use.setCity(city);
		uService.updateUsersById(use);
		return "GoPersonalCenter.do";	
	}
	
	/**
	 *根据id查询用户 
	 */
	@RequestMapping("findUsersById.do")
	public String findUsersById(HttpServletResponse response,HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		Users user = uService.findUsersById(id);
		request.setAttribute("user", user);
		return "chemguanpanel/updateUser.jsp";
		
	}
	
	/**
	 *根据id修改用户信息 
	 * @throws Exception 
	 */
	@RequestMapping("updateUsersById.do")
	public String updateUsersById(HttpServletResponse response,HttpServletRequest request) throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		String mobile = request.getParameter("mobile");
		Integer score = Integer.parseInt(request.getParameter("score"));
		String address = request.getParameter("address");
		String addDate = tools.dataToString2(new Date());
		//String headImgURL = tools.saveImage(request, response, "headImgURL");
		//String nickName = request.getParameter("nickName");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String realName = request.getParameter("realName");
		Integer shareUserID = Integer.parseInt(request.getParameter("shareUserID"));
		Users user = new Users();
		user.setId(id);
		user.setMobile(mobile);
		user.setScore(score);
		user.setAddress(address);
		user.setAddDate(addDate);
		//user.setHeadImgURL(headImgURL);
		//user.setNickName(nickName);
		user.setProvince(province);
		user.setCity(city);
		user.setRealName(realName);
		user.setShareUserID(shareUserID);
		
		return "findAllUsers.do";
		
	}
	
	
	/**
	 * 根据id删除用户
	 */
	@RequestMapping("deleteUsersById.do")
	public String detetUsersById(HttpServletResponse response,HttpServletRequest request){
	    int id = Integer.parseInt(request.getParameter("id"));
	    uService.deleteUsersById(id);
		return "findAllUsers.do";
		
	}
	
	/**
	 *批量删除 
	 */
	@RequestMapping("deleteUsers.do")
	public String deleteUsers(HttpServletResponse response,HttpServletRequest request,String map){
		List list = tools.split(map);
		uService.deleteUsers(list);
		return "findAllUsers.do";
		
	}
	
	/**
	 * 发送手机验证码
	 * @param response
	 * @param tnumber
	 * @return
	 */
	@RequestMapping("sendcheck.do")
	@ResponseBody
	public String sendcheck(HttpServletResponse response,String tnumber){
		Random random=new java.util.Random();// 定义随机类
    	String checkstr="";
    	for(int i=0;i<4;i++){
    		int result=random.nextInt(10);
    		checkstr+=String.valueOf(result);
    	}
    	System.out.println("phone:"+tnumber);
    	Cookie cookie = new Cookie("phone"+tnumber,checkstr);       //(key,value)
	    cookie.setPath("/");
	    cookie.setMaxAge(5*60);// 不设置的话，则cookies不写入硬盘,而是写在内存,只在当前页面有用,以秒为单位
	    response.addCookie(cookie);
	    //手机发送start
	    Phonesend ps=new Phonesend();
	    try {
			ps.messageObject("您好，您的操作验证码是："+checkstr+",西瓜树儿童创意平台欢迎您的使用！", tnumber);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    //手机发送end
	    
		return checkstr;
	}
	
	/**
	 * 匹配手机验证码
	 * @param request
	 * @param response
	 * @param email
	 * @param checkcode
	 * @return
	 */
	@RequestMapping("phonematch.do")
	@ResponseBody
	public String phonematch(HttpServletRequest request,HttpServletResponse response,String phone,String checkcode){
		//HttpSession session=request.getSession();
		Cookie[] cks=request.getCookies();
		if(cks!=null&&cks.length>0){
			for(Cookie c:cks){
				if(c.getName().substring(5).equals(phone)&&c.getValue().equals(checkcode)){
							
							return "1";
				}
			}
			return "2";
		}
		return "3";                     //请重新填写手机地址
	}
	
	/**
	 *报名成功跳转页面 
	 */
	@RequestMapping("aa.do")
	public String aa(HttpServletResponse response,HttpServletRequest request){
		String mobile = request.getParameter("tNumber");
		request.setAttribute("mobile", mobile);
		return "personalCenter.jsp";
		
	}

}
