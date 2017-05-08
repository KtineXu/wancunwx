package com.chemguan.dao;

import java.util.List;
import java.util.Map;

import com.chemguan.entity.Users;

public interface UsersDao {
	
	/**
	 * 查询所有信息
	 */
	public List<Users> findAllUsers();
	
	/**
	 * 新增信息
	 */
	public void addUsers(Users u);
	
	/**
	 * 根据ID查询信息
	 */
	public Users findUsersById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateUsersById(Users u);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteUsersById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteUsers(List list);
	
	
	/**
	 * 根据oppid查询
	 */
	public Users findUsersByoppId(String opppid);

	/**
	 * 郭胜：后台分页功能
	 * @param map
	 * @return
	 */
	public List<Users> findByPageBean(Map<String, Integer> map);

}
