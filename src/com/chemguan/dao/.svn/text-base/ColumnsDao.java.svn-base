package com.chemguan.dao;

import java.util.List;

import com.chemguan.entity.Columns;
import com.chemguan.entity.Works;
import com.chemguan.entity.WorksComment;

public interface ColumnsDao {


	/**
	 * 查询所有信息
	 */
	public List<Columns> findAllColumns();
	/**
	 * 新增信息
	 */
	public void addColumns(Columns c);
	
	/**
	 * 根据ID查询信息
	 */
	public Columns findColumnsById(int id);
	
	/**
	 * 根据ID修改信息
	 */
	public void updateColumns(Columns c);
	/**
	 * 根据ID删除信息
	 */
	public void deleteColumnsById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteColumns(List list);
	
	/**
	 * 根据父id查询栏目信息
	 * @return
	 */
	public List<Columns> findColumnsByParentId(int id);
	
}
