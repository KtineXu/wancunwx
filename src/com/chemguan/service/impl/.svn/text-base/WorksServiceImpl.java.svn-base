package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.WorksDao;
import com.chemguan.entity.Works;
import com.chemguan.entity.WorksPand;
import com.chemguan.service.WorksService;


/***
 * works的service 层的实现
 * @author guosheng 
 *
 */
@Service
@Transactional
public class WorksServiceImpl implements WorksService {

	@Resource
	private WorksDao worksDao;
	
	/**
	 * 新增
	 */
	public void addWorks(Works w) {
		worksDao.addWorks(w);
	}

	/**
	 *批量删除
	 */
	public void deleteWorks(List list) {
		worksDao.deleteWorks(list);
	}

	/**
	 *根据id删除
	 */
	public void deleteWorksById(int id) {
		worksDao.deleteWorksById(id);
	}

	/**
	 * 查询所有
	 */
	public List<Works> findAllWorks() {
		return worksDao.findAllWorks();
	}

	/**
	 * 根据id查询单个
	 */
	public Works findWorksById(int id) {
		return worksDao.findWorksById(id);
	}

	/**
	 * 更新
	 */
	public void updateWorks(Works w) {
		worksDao.updateWorks(w);
	}


	public List<Works> findAllWorksByUserId(WorksPand wPand) {
		
		return worksDao.findAllWorksByUserId(wPand);
	}


	public List<Works> findAllWorksByUserId(int userId) {
		return null;
	}

	public List<Works> findHotWorks() {
		return worksDao.findHotWorks();
	}

	/**
	 * 分页查询：后台，郭胜
	 */
	public List<Works> findByPageBean(Map map) {
		return worksDao.findByPageBean(map);
	}
	
	
	
	public List<Works> findWorks(Map map) {
		return worksDao.findWorks(map);
	}

	public Integer visitCount(Map map) {
		// TODO Auto-generated method stub
		return worksDao.visitCount(map);
	}

	public void updateLikeCountById(int id) {
		// TODO Auto-generated method stub
		worksDao.updateLikeCountById(id);
	}


}
