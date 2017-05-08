package com.chemguan.dao;

import java.util.List;
import java.util.Map;

import com.chemguan.entity.WcProduct;

public interface WcProductDao {
	
	/**
	 * 查询所有信息
	 */
	public List<WcProduct> findAllProducts();
	
	/**
	 * 新增信息
	 */
	public void addProduct(WcProduct p);
	
	/**
	 * 根据ID查询信息
	 */
	public WcProduct findProductById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateProductById(WcProduct p);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteProductById(int id);
	
	
	
	/**
	 * 后台分页查询
	 * @param map
	 * @return
	 */
	public List<WcProduct> findByPageBean(Map<String, Integer> map);

}
