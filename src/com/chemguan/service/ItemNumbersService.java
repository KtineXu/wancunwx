package com.chemguan.service;

import java.util.List;

import com.chemguan.entity.ItemNumbers;

public interface ItemNumbersService {


	/**
	 * 查询所有信息
	 */
	public List<ItemNumbers> findAllItemNumbers();
	/**
	 * 新增信息
	 */
	public void addItemNumbers(ItemNumbers w);
	
	/**
	 * 根据ID查询信息
	 */
	public ItemNumbers findItemNumbersById(int id);
	
	/**
	 * 根据ID修改信息
	 */
	public void updateItemNumbers(ItemNumbers w);
	/**
	 * 根据ID删除信息
	 */
	public void deleteItemNumbersById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteItemNumbers(List list);
}
