package com.chemguan.dao;

import java.util.List;
import java.util.Map;

import com.chemguan.entity.News;

public interface NewsDao {


	/**
	 * 查询所有信息
	 */
	public List<News> findAllNews();
	
	/**
	 * 新增信息
	 */
	public void addNews(News c);
	
	/**
	 * 根据ID查询信息
	 */
	public News findNewsById(int id);
	
	/**
	 * 根据ID修改信息
	 */
	public void updateNews(News c);
	/**
	 * 根据ID删除信息
	 */
	public void deleteNewsById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteNews(List list);
	
	/**
	 * 根据columnId字段查询
	 */
	public List<News> findManyByColumnId(int columnId);
	
	/**
	 * 分页查询
	 */
	public List<News> findByPageBean(Map map);

	/**
	 * 满足首页暂定的方法
	 * @param map
	 * @return
	 */
	public List<News> findByIndexPage(Map map);
}
