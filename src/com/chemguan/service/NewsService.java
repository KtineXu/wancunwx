package com.chemguan.service;

import java.util.List;
import java.util.Map;

import com.chemguan.entity.News;

public interface NewsService {

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
	 * 根据columnId查询
	 */
	public List<News> findManyByColumnId(int id);
	
	/**
	 * 分页查询
	 */
	public List<News> findByPageBean(Map map);
	
	/**
	 * 这是我为了满足首页的需求，暂定的一个方法
	 */
	public List<News> findByIndexPage(Map map);
}
