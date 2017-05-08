package com.chemguan.dao;

import java.util.List;

import com.chemguan.entity.ScoreRecords;

public interface ScoreRecordsDao {
	
	/**
	 * 查询所有信息
	 */
	public List<ScoreRecords> findAllScoreRecords();
	
	/**
	 * 新增信息
	 */
	public void addScoreRecords(ScoreRecords sr);
	
	/**
	 * 根据ID查询信息
	 */
	public ScoreRecords findScoreRecordsById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateScoreRecordsById(ScoreRecords sr);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteScoreRecordsById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteScoreRecords(List list);

	
	/**
	 * 根据title查询积分
	 */
	public List<ScoreRecords> findScoreRecordsBytitle(String title,int userid);	
	
	
	
	/**
	 * 根据userId 字段查询scoreRecords
	 */
	public List<ScoreRecords> findByUserId(int userId);
	
}

