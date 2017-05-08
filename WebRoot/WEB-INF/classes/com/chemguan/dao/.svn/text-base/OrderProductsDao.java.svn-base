package com.chemguan.dao;

import java.util.List;

import com.chemguan.entity.OrderProducts;
import com.chemguan.entity.Orderserviceproduct;

public interface OrderProductsDao {
	
	/**
	 * 查询所有信息
	 */
	public List<OrderProducts> findAllOrderProducts();
	
	/**
	 * 新增信息
	 */
	public void addOrderProducts(OrderProducts op);
	
	/**
	 * 根据ID查询信息
	 */
	public OrderProducts findOrderProductsById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateOrderProductsById(OrderProducts op);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteOrderProductsById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteOrderProducts(List list);
	
	/**
	 * 根据用户id查询订单产品信息
	 *//*
	public List<Orderserviceproduct> findAllOrderserviceProducts(int id);*/
	
	/**
	 * 根据用户id查询所有延保过的产品
	 */
	public List<Orderserviceproduct> findybOrderProductsbycusid(int cusid);
}
