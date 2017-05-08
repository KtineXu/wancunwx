package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.ColumnsDao;
import com.chemguan.entity.Columns;
import com.chemguan.service.ColumnsService;


/***
 * Columns的services层实现
 * @author guosheng
 *
 */
@Service
@Transactional
public class ColumnsServiceImpl implements ColumnsService {

	@Resource
	private ColumnsDao columnsDao;
	
	/**
	 * 新增
	 */
	public void addColumns(Columns c) {
		columnsDao.addColumns(c);
	}

	/**
	 * 批量删除
	 */
	public void deleteColumns(List list) {
		columnsDao.deleteColumns(list);
	}

	/**
	 * 根据id删除
	 */
	public void deleteColumnsById(int id) {
		columnsDao.deleteColumnsById(id);
	}

	/**
	 * 查询所有
	 */
	public List<Columns> findAllColumns() {
		return columnsDao.findAllColumns();
	}

	/**
	 * 根据id查找
	 */
	public Columns findColumnsById(int id) {
		return columnsDao.findColumnsById(id);
	}

	/**
	 * 修改
	 */
	public void updateColumns(Columns c) {
		columnsDao.updateColumns(c);
	}

	public List<Columns> findColumnsByParentId(int id) {
		return columnsDao.findColumnsByParentId(id);
	}

}
