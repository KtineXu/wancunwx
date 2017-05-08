package com.chemguan.service;

import java.util.List;

import com.chemguan.entity.WorksComment;

public interface WorksCommentService {

	/**
	 * 查询所有信息
	 */
	public List<WorksComment> findAllWorksComment();
	
	/**
	 * 新增信息
	 */
	public void addWorksComment(WorksComment w);
	
	/**
	 * 根据ID查询信息
	 */
	public WorksComment findWorksCommentById(int id);
	
	/**
	 * 根据ID修改信息
	 */
	public void updateWorksComment(WorksComment w);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteWorksCommentById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteWorksComment(List list);
	
	/**
	 *根据作品id查询信息 
	 */
	public  List<WorksComment> findWorksCommentByWorksId(int worksId);
	
	/**
	 *根据作品id查询评论总数
	 */
	public int countByWorksId(int worksId);
	

}
