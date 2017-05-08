package com.chemguan.service;

import java.util.List;
import java.util.Map;

import com.chemguan.po.Producttype;

/**
 * 产品的类型接口
 * @author郭胜
 *
 */
public interface ProductTypeService {

	/**
	 * 查
	 */
	public List<Producttype> findAllProductType();
	
	/**
	 * 根据id查单个产品类型对象
	 */
	public Producttype findProductTypeById(Integer id);

	/**
	 * 产品种类的分页查询
	 * @param map
	 * @return
	 */
	public List<Producttype> findProductTypeByPageBean(Map<String, Integer> map);

	/**
	 * 插入一个产品类型信息
	 * @param p
	 */
	public void insertProductType(Producttype p);

	/**
	 * 根据id删除产品类型信息
	 * @param id
	 */
	public void deleteProductTypeById(Integer id);

	/**
	 * 修改一个产品类别信息
	 * @param p
	 */
	public void updateProductType(Producttype p);
	
}
