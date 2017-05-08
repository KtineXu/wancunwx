package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chemguan.dao.ProducttypeMapper;
import com.chemguan.po.Producttype;
import com.chemguan.service.ProductTypeService;

/**
 * 查产品类型的接口实现类
 * @author郭胜
 *
 */
@Service
public class ProductTypeServiceImpl implements ProductTypeService {

	@Resource
	private ProducttypeMapper producttypeMapper;
	/**
	 * 查产品类型
	 */
	public List<Producttype> findAllProductType() {
		return producttypeMapper.findAllProductTypeMapper();
	}
	
	/**
	 * 根据产品类型的id查询产品类型
	 */
	public Producttype findProductTypeById(Integer id) {
		return producttypeMapper.findProductTypeById(id);
	}

	/**
	 * 产品种类的分页查询
	 */
	public List<Producttype> findProductTypeByPageBean(Map<String, Integer> map) {
		return producttypeMapper.findProductTypeByPageBean(map);
	}

	/**
	 * 插入一个产品类型信息
	 */
	public void insertProductType(Producttype p) {
		producttypeMapper.insertProductType(p);
	}

	/**
	 * 根据id删除产品类型信息
	 */
	public void deleteProductTypeById(Integer id) {
		producttypeMapper.deleteProductTypeById(id);
	}

	/**
	 * 修改产品类别信息
	 */
	public void updateProductType(Producttype p) {
		producttypeMapper.updateProductType(p);
	}

}
