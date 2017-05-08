package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.UsersDao;
import com.chemguan.entity.Users;
import com.chemguan.service.UsersService;
@Service
@Transactional
public class UsersServiceImpl implements UsersService{
	
	@Resource
	UsersDao uDao;
	
	/**
	 * 查询所有信息
	 */
	public List<Users> findAllUsers() {
		// TODO Auto-generated method stub
		return uDao.findAllUsers();
	}
	
	/**
	 * 新增信息
	 */
	public void addUsers(Users u) {
		// TODO Auto-generated method stub
		uDao.addUsers(u);
	}
	
	/**
	 * 根据ID查询信息
	 */
	public Users findUsersById(int id) {
		// TODO Auto-generated method stub
		return uDao.findUsersById(id);
	}
	
	/**
	 * 根据ID修改信息
	 */
	public void updateUsersById(Users u) {
		// TODO Auto-generated method stub
		uDao.updateUsersById(u);
	}
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteUsersById(int id) {
		// TODO Auto-generated method stub
		uDao.deleteUsersById(id);
	}
	
	/**
	 * 批量删除信息
	 */
	public void deleteUsers(List list) {
		// TODO Auto-generated method stub
		uDao.deleteUsers(list);
	}

	/**
	 * 根据oppid查询
	 */
	public Users findUsersByoppId(String opppid) {
		
		return uDao.findUsersByoppId(opppid);
	}

	
	/**
	 * 郭胜：后台分页功能
	 */
	public List<Users> findByPageBean(Map<String, Integer> map) {
		return uDao.findByPageBean(map);
	}
	
	
	

}
