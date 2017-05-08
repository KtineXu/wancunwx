package com.chemguan.dao;

import java.util.List;
import java.util.Map;

import com.chemguan.entity.OrderProducts;
import com.chemguan.entity.Products;

public interface ProductsDao {
	
	/**
	 * 查询所有信息
	 */
	public List<Products> findAllProducts();
	
	/**
	 * 新增信息
	 */
	public void addProducts(Products p);
	
	/**
	 * 根据ID查询信息
	 */
	public Products findProductsById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateProductsById(Products p);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteProductsById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteProducts(List list);
	
	/**
	 * 根据商品名查询商品信息
	 */
	public Products findByProductsName(String name);
	
	/**
	 * 根据延保单号查询信息
	 */
	public Products findProductsByseri(String SerialNumber);

	/**
	 * 郭胜：后台分页查询
	 * @param map
	 * @return
	 */
	public List<Products> findByPageBean(Map<String, Integer> map);

}
