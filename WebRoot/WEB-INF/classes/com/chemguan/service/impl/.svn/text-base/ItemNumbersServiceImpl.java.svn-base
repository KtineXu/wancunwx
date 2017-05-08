package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.ItemNumbersDao;
import com.chemguan.entity.ItemNumbers;
import com.chemguan.service.ItemNumbersService;

/***
 * itemNumbers的service实现类
 * @author Administrator
 *
 */
@Service
@Transactional
public class ItemNumbersServiceImpl implements ItemNumbersService {
	@Resource
	private ItemNumbersDao itemNumbersDao;

	/**
	 * 新增
	 */
	public void addItemNumbers(ItemNumbers w) {
		itemNumbersDao.addItemNumbers(w);
	}

	/**
	 *批量删除
	 */
	public void deleteItemNumbers(List list) {
		itemNumbersDao.deleteItemNumbers(list);
	}

	/**
	 * 根据id删除
	 */
	public void deleteItemNumbersById(int id) {
		itemNumbersDao.deleteItemNumbersById(id);
	}

	/**
	 * 查询所有
	 */
	public List<ItemNumbers> findAllItemNumbers() {
		return itemNumbersDao.findAllItemNumbers();
	}

	/**
	 * 根据id查询一个
	 */
	public ItemNumbers findItemNumbersById(int id) {
		return itemNumbersDao.findItemNumbersById(id);
	}

	/**
	 * 修改
	 */
	public void updateItemNumbers(ItemNumbers w) {
		itemNumbersDao.updateItemNumbers(w);
	}

}
