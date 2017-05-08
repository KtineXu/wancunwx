package com.chemguan.service;

import java.util.List;

import com.chemguan.entity.OrderProducts;
import com.chemguan.entity.Orders;
import com.chemguan.entity.Products;

public interface OrdersService {
	
	/**
	 * 查询所有信息
	 */
	public List<Orders> findAllOrders();
	
	/**
	 * 新增信息
	 */
	public void addOrders(Orders o);
	
	/**
	 * 根据ID查询信息
	 */
	public Orders findOrdersById(int id );
	
	/**
	 * 根据ID修改信息
	 */
	public void updateOrdersById(Orders o);
	
	/**
	 * 根据ID删除信息
	 */
	public void deleteOrdersById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteOrders(List list);
	
	/**
	 * 根据订单编号查询订单
	 */
	public Orders findOrdersByordernum(String id);

}
