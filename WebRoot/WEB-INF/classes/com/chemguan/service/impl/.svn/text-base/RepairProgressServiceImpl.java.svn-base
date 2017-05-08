package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.RepairProgressDao;
import com.chemguan.entity.RepairProgress;
import com.chemguan.service.RepairProgressService;
@Service
@Transactional
public class RepairProgressServiceImpl implements RepairProgressService{
	
	@Resource
	RepairProgressDao rpDao;
	
	/**
	 * 查所有
	 */
	public List<RepairProgress> findAllRepairProgress() {
		// TODO Auto-generated method stub
		return rpDao.findAllRepairProgress();
	}
   
	/**
	 *增加 
	 */
	public void addRepairProgress(RepairProgress rp) {
		// TODO Auto-generated method stub
		rpDao.addRepairProgress(rp);
	}
	
	/**
	 * 根据id查询
	 */
	public RepairProgress findRepairProgressById(int id) {
		// TODO Auto-generated method stub
		return rpDao.findRepairProgressById(id);
	}
	
	/**
	 * 根据id修改
	 */
	public void updateRepairProgressById(RepairProgress rp) {
		// TODO Auto-generated method stub
		rpDao.updateRepairProgressById(rp);
	}
	
	/**
	 * 根据id删除
	 */
	public void deleteRepairProgressById(int id) {
		// TODO Auto-generated method stub
		rpDao.deleteRepairProgressById(id);
	}

	/**
	 * 批量删除
	 */
	public void deleteRepairProgress(List list) {
		// TODO Auto-generated method stub
		rpDao.deleteRepairProgress(list);
	}

	/**
	 * 根据repairId查询RepairProgress
	 */
	public List<RepairProgress> findByRepairId(int repairId) {
		return rpDao.findByRepairId(repairId);
	}

	

	

	



}
