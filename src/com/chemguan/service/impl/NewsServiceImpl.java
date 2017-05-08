package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.NewsDao;
import com.chemguan.entity.News;
import com.chemguan.service.NewsService;

@Service
@Transactional
public class NewsServiceImpl implements NewsService {

	@Resource
	private NewsDao newsDao;
	
	/**
	 * 新增
	 */
	public void addNews(News c) {
		newsDao.addNews(c);
	}

	/**
	 * 批量删除
	 */
	public void deleteNews(List list) {
		newsDao.deleteNews(list);
	}

	/**
	 * 根据id 删除
	 */
	public void deleteNewsById(int id) {
		newsDao.deleteNewsById(id);
	}

	/**
	 * 查询所有
	 */
	public List<News> findAllNews() {
		return newsDao.findAllNews();
	}

	/**
	 * 根据id查询单个
	 */
	public News findNewsById(int id) {
		return newsDao.findNewsById(id);
	}

	/**
	 * 修改
	 */
	public void updateNews(News c) {
		newsDao.updateNews(c);
	}

	/**
	 * 根据columnid查询
	 */
	public List<News> findManyByColumnId(int id) {
		return newsDao.findManyByColumnId(id);
	}

	/**
	 * 分页查询
	 */
	public List<News> findByPageBean(Map map) {
		return newsDao.findByPageBean(map);
	}

	/**
	 * 这是为了满足首页的需求暂定的一个方法
	 */
	public List<News> findByIndexPage(Map map) {
		return newsDao.findByIndexPage(map);
	}

}
