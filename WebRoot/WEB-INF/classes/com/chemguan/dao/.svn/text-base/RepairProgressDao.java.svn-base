package com.chemguan.dao;

import java.util.List;

import com.chemguan.entity.Products;
import com.chemguan.entity.RepairProgress;

public interface RepairProgressDao {
	
	/**
	 * 查询所有信息
	 */
	public List<RepairProgress> findAllRepairProgress();
	
	/**
	 * 新增信息
	 */
	public void addRepairProgress(RepairProgress rp);
	
	/**
	 * 根据ID查询信息
	 */
	public RepairProgress findRepairProgressById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateRepairProgressById(RepairProgress rp);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteRepairProgressById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteRepairProgress(List list);
	
	/**
	 * 根据repairid查询repairProgress
	 */
	public List<RepairProgress> findByRepairId(int repairId);

}
