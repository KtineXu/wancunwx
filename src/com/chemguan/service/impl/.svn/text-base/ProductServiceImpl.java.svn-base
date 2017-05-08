package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chemguan.dao.ProductMapper;
import com.chemguan.po.Product;
import com.chemguan.service.ProductService;

/**
 * product的service层的接口实现类
 * @author 郭胜
 *
 */
@Service
public class ProductServiceImpl implements ProductService {
	@Resource
	private ProductMapper productMapper;

	/**
	 * 删
	 */
	public void deleteProduct(Product p) {
		productMapper.deleteProduct(p);
	}

	/**
	 * 增
	 */
	public void insertProduct(Product p) {
		productMapper.insertProduct(p);
	}

	/**
	 * 改
	 */
	public void updateProduct(Product p) {
		productMapper.updateProduct(p);
	}


	/**
	 * 查所有
	 */
	public List<Product> findAllProduct() {
		return productMapper.findAllProduct();
	}

	/**
	 * 根据分页查
	 */
	public List<Product> findByPageBean(Map map) {
		return productMapper.findByPageBean(map);
	}

	/**
	 * 根据产品的id查询一个产品
	 */
	public Product findProductById(Integer id) {
		return productMapper.findProductById(id);
	}

	/**
	 * 根据产品类型typeid查询产品的集合
	 */
	public List<Product> findProductByTypeId(int typeid) {
		return productMapper.findProductByTypeId(typeid);
	}

	/**
	 * 前台功能：分页功能
	 */
	public List<Product> findProductByPageBean(Map map) {
		return productMapper.findProductByPageBean(map);
	}

}
