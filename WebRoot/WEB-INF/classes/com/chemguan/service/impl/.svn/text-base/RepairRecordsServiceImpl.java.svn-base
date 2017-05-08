package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.RepairRecordsDao;
import com.chemguan.entity.RepairRecords;
import com.chemguan.service.RepairRecordsService;
@Service
@Transactional
public class RepairRecordsServiceImpl implements RepairRecordsService{
	
	@Resource
	RepairRecordsDao rrDao;
	
	/**
	 * 查所有
	 */
	public List<RepairRecords> findAllRepairRecords() {
		// TODO Auto-generated method stub
		return rrDao.findAllRepairRecords();
	}

	/**
	 * 增加
	 */
	public void addRepairRecords(RepairRecords rr) {
		// TODO Auto-generated method stub
		rrDao.addRepairRecords(rr);
	}
	
	/**
	 * 根据id查询
	 */
	public RepairRecords findRepairRecordsById(int id) {
		// TODO Auto-generated method stub
		return rrDao.findRepairRecordsById(id);
	}
	
	/**
	 * 根据id修改
	 */
	public void updateRepairRecordsById(RepairRecords rr) {
		// TODO Auto-generated method stub
		rrDao.updateRepairRecordsById(rr);
	}
	
	/**
	 * 根据id删除
	 */
	public void deleteRepairRecordsById(int id) {
		// TODO Auto-generated method stub
		rrDao.deleteRepairRecordsById(id);
	}


	/**
	 * 批量删除
	 */
	public void deleteRepairRecords(List list) {
		// TODO Auto-generated method stub
		rrDao.deleteRepairRecords(list);
	}
	
	/**
	 * 根据userid字段查询repairRecords的list集合
	 */
	public List<RepairRecords> findByUserId(int id) {
		return rrDao.findByUserId(id);
	}

	

	

	


}
