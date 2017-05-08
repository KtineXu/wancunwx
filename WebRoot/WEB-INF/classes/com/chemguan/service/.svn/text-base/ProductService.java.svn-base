package com.chemguan.service;

import java.util.List;
import java.util.Map;

import com.chemguan.po.Product;

/**
 * 产品类service的接口
 * @author 郭胜
 *
 */
public interface ProductService {

	/**
	 * 增
	 */
	public void insertProduct(Product p);
	
	/**
	 * 删
	 */
	public void deleteProduct(Product p);
	
	/**
	 * 改
	 */
	public void updateProduct(Product p);
	
	/**
	 * 查
	 */
	public List<Product> findAllProduct();
	
	/**
	 * 根据pageBean的方法分页查
	 */
	public List<Product> findByPageBean(Map map);
	
	/**
	 * 根据产品的id 查询一个产品
	 */
	public Product findProductById(Integer id);

	/**
	 * 根据产品类型id查询产品集合
	 * @param typeid
	 * @return
	 */
	public List<Product> findProductByTypeId(int typeid);
	
	/**
	 * 前台功能：前台分页功能
	 */
	public List<Product> findProductByPageBean(Map map);
	
}
