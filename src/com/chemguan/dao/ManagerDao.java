package com.chemguan.dao;

import java.util.List;

import com.chemguan.entity.Manager;

public interface ManagerDao {
	
	/**
	 * 根据登陆名和密码查询用户
	 * @param m
	 * @return
	 */
	public Manager loginback(Manager m);
	
	/**
	 * 查询所有
	 */
	public List<Manager> findAllManager();
	
	/**
	 * 新增管理用户
	 */
	public void  addManager(Manager m);
	
	/**
	 * 根据ID查询管理用户
	 */
	public Manager findManagerById(int id);
	
	/**
	 * 根据ID修改用户
	 */
	public void updateManagerById(Manager m);
	
	/**
	 * 根据Id删除用户
	 */
	public void deleteManagerById(int id);
	
	/**
	 * 批量删除
	 */
	public void deleteManager(List list);

}
