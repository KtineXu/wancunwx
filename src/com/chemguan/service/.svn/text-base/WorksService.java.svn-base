package com.chemguan.service;

import java.util.List;
import java.util.Map;

import com.chemguan.entity.Works;
import com.chemguan.entity.WorksPand;

public interface WorksService {


	/**
	 * 查询所有信息
	 */
	public List<Works> findAllWorks();
	
	/**
	 * 新增信息
	 */
	public void addWorks(Works w);
	
	/**
	 * 根据ID查询信息
	 */
	public Works findWorksById(int id);
	
	/**
	 * 根据ID修改信息
	 */
	public void updateWorks(Works w);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteWorksById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteWorks(List list);
	
	/**
	 * 根据userId查询所有信息
	 */
	public List<Works> findAllWorksByUserId(WorksPand wPand);
	
	/**
	 *查出3条最热视频作品 
	 */
	public List<Works> findHotWorks();

	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<Works> findByPageBean(Map map);
	
	/**
	 * 查询所有信息
	 */
	public List<Works> findWorks(Map map);
	
	/**
	 * 访问量+1
	 */
	public Integer visitCount(Map map);
	
	/**
	 *点赞 
	 */
	public void updateLikeCountById(int id);
	
}
