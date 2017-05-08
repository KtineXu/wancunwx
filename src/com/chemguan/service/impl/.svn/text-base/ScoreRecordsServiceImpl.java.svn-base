package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.ScoreRecordsDao;
import com.chemguan.entity.ScoreRecords;
import com.chemguan.service.ScoreRecordsService;
@Service
@Transactional
public class ScoreRecordsServiceImpl implements ScoreRecordsService{
	
	@Resource
	ScoreRecordsDao srDao;
	
	/**
     * 查所有
     */
	public List<ScoreRecords> findAllScoreRecords() {
		// TODO Auto-generated method stub
		return srDao.findAllScoreRecords();
	}
	
    /**
     * 增加
     */
	public void addScoreRecords(ScoreRecords sr) {
		// TODO Auto-generated method stub
		srDao.addScoreRecords(sr);
	}
	
	/**
     * 根据id查找
     */
	public ScoreRecords findScoreRecordsById(int id) {
		// TODO Auto-generated method stub
		return srDao.findScoreRecordsById(id);
	}
	
	/**
     * 根据id修改
     */
	public void updateScoreRecordsById(ScoreRecords sr) {
		// TODO Auto-generated method stub
		srDao.updateScoreRecordsById(sr);
	}
	
	/**
     * 根据id删除
     */
	public void deleteScoreRecordsById(int id) {
		// TODO Auto-generated method stub
		srDao.deleteScoreRecordsById(id);
	}
	
	/**
     * 批量删除
     */
	public void deleteScoreRecords(List list) {
		// TODO Auto-generated method stub
		srDao.deleteScoreRecords(list);
	}

	/**
	 * 根据title查询
	 */
	public List<ScoreRecords> findScoreRecordsBytitle(String title,int userid) {
		
		return srDao.findScoreRecordsBytitle(title,userid);
	}	

	
	/**
	 * 根据userId查询
	 */
	public List<ScoreRecords> findByUserId(int userId) {
		return srDao.findByUserId(userId);
	}
	
	
	
	
	
	

}
