package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.WorksCommentDao;
import com.chemguan.entity.Works;
import com.chemguan.entity.WorksComment;
import com.chemguan.service.WorksCommentService;


@Service
@Transactional
public class WorksCommentServiceImpl implements WorksCommentService {
	
	@Resource
	WorksCommentDao worksCommentDao;

	/**
	 * 新增
	 */
	public void addWorksComment(WorksComment w) {
		worksCommentDao.addWorksComment(w);
	}

	/**
	 * 批量删除
	 */
	public void deleteWorksComment(List list) {
		worksCommentDao.deleteWorksComment(list);
	}

	/**
	 * 根据id删除
	 */
	public void deleteWorksCommentById(int id) {
		worksCommentDao.deleteWorksCommentById(id);
	}
	
	/**
	 * 查询所有
	 */
	public List<WorksComment> findAllWorksComment() {
		return worksCommentDao.findAllWorksComment();
	}

	/**
	 * 根据id查询单个
	 */
	public WorksComment findWorksCommentById(int id) {
		return worksCommentDao.findWorksCommentById(id);
	}

	/**
	 * 修改
	 */
	public void updateWorksComment(WorksComment w) {
		worksCommentDao.updateWorksComment(w);
	}
	
	/**
	 * 根据作品id查询评论总数
	 */

	public int countByWorksId(int worksId) {
		
		return worksCommentDao.countByWorksId(worksId);
	}
    
	/**
	 *根据作品id查询信息 
	 */
	
	public List<WorksComment> findWorksCommentByWorksId(int worksId) {
		
		return worksCommentDao.findWorksCommentByWorksId(worksId);
	}



}
