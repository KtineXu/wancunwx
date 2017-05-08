package com.chemguan.dao;

import com.chemguan.po.Producttype;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ProducttypeMapper {

    /**
     * 查询所有商品类型
     * @return
     */
	List<Producttype> findAllProductTypeMapper();

	/**
	 * 根据产品类型的id查询产品类型
	 * @param id
	 * @return
	 */
	Producttype findProductTypeById(Integer id);
	
	
	/**
	 * 分页查询产品的类型
	 * @param map
	 * @return
	 */
	List<Producttype> findProductTypeByPageBean(Map<String, Integer> map);

	/**
	 * 插入一个产品类型信息
	 * @param p
	 */
	void insertProductType(Producttype p);

	/**
	 * 根据id删除产品类别信息
	 * @param id
	 */
	void deleteProductTypeById(Integer id);

	/**
	 * 修改一个产品类别信息
	 * @param p
	 */
	void updateProductType(Producttype p);
}