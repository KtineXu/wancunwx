package com.chemguan.dao;


import java.util.List;
import java.util.Map;

import com.chemguan.entity.IntegralMall;
import com.chemguan.entity.Products;

public interface IntegralMallDao {
	
	/**
	 * 查询绘图笔配件
	 */
	public List<IntegralMall> findAllProducts(Map map); 
	
	/**
	 * 查询其他产品
	 */
	public List<IntegralMall> findAllqita(Map map);
	
	/**
	 * 喜欢的商品
	 */
	public List<IntegralMall> findLike();
	
	/**
	 * 产品详情
	 */
	public Products findAllid(Integer id);
	
	/**
	 * 根据用户id去查询地址
	 */
	public String findAddress(Integer id );
	
	
	/**
	 * 访问量+1
	 */
	public Integer visitCount(Map map);
	
	/**
	 * 查询订单产品表 id
	 */
	public void findOrderid();
}
