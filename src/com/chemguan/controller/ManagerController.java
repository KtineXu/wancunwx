package com.chemguan.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chemguan.entity.Manager;
import com.chemguan.service.ManagerService;
import com.chemguan.tool.Tools;

@Controller
public class ManagerController {
	
	@Resource
	ManagerService mService;
	
	@Resource
	Tools tools;
	
	/**
	 *后台登录 
	 */
	
	@RequestMapping("loginback.do")
	@ResponseBody
	public String loginback(HttpServletResponse response,HttpServletRequest request){
		String username  = request.getParameter("username");
		String password = request.getParameter("password");
		
		//根据登陆名和密码查询用户
		Manager manager = new Manager();
		manager.setName(username);
		manager.setPassword(password);
		Manager m = mService.loginback(manager);
		HttpSession ss=request.getSession();
		ss.setAttribute("adminname", username);
		if(null != m){
			return "1";
		}else{
			return "2";
		}			

    }
	
	/**
	 *查询所有 
	 */
	@RequestMapping("findAllManager.do")
	public String findAllManager(HttpServletResponse response,HttpServletRequest request){
		List<Manager> mList = mService.findAllManager();
		request.setAttribute("mList", mList);
		return "chemguanpanel/manager.jsp";
		
	}
	
	/**
	 *增加 
	 */
	@RequestMapping("addManager.do")
	public String addManager(HttpServletResponse response,HttpServletRequest request){
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		int power = Integer.parseInt(request.getParameter("power"));
		String createTime = tools.dataToString2(new Date());
		Manager m = new Manager();
		m.setName(name);
		m.setPassword(password);
		m.setPower(power);
		m.setCreateTime(createTime);
		mService.addManager(m);
		return "findAllManager.do";
		
	}
	
	/**
	 *根据id查询
	 */
	@RequestMapping("findManagerById.do")
	public String findManagerById(HttpServletResponse response,HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		Manager manager = mService.findManagerById(id);
		request.setAttribute("m", manager);
		return "chemguanpanel/addManager.jsp";
		
	}
	
	/**
	 * 根据id修改
	 */
	@RequestMapping("updateManagerById.do")
	public String updateManagerById(HttpServletResponse response,HttpServletRequest request){
		Manager manager = new Manager();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String createTime = tools.dataToString2(new Date());
		String p = request.getParameter("power");
		if(null != p && p != ""){
			int power = Integer.parseInt(p);
			manager.setPower(power);
		}		
		manager.setId(id);
		manager.setName(name);
		manager.setPassword(password);		
		manager.setCreateTime(createTime);
		mService.updateManagerById(manager);
		return "findAllManager.do";
		
	}
	
	/**
	 *根据ID删除用户
	 * @param response
	 * @param request
	 * @return
	 */
	@RequestMapping("deleteManagerById.do")
	public String deleteManagerById(HttpServletResponse response,HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		mService.deleteManagerById(id);
		return "findAllManager.do";
				
	}
	
	/**
	 *删除全部用户
	 *
	 */
	@RequestMapping("deleteManager.do")
	public String deletemoremanager(HttpServletResponse response,HttpServletRequest request,String map){
		List list = tools.split(map);		
		mService.deleteManager(list);
		return "findAllManager.do";
				
	}
	
}
