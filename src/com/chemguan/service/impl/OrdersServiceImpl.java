package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.OrdersDao;
import com.chemguan.entity.Orders;
import com.chemguan.service.OrdersService;
@Service
@Transactional
public class OrdersServiceImpl implements OrdersService{
	
	@Resource
    OrdersDao oDao;
	
	/**
	 *查所有 
	 */
	public List<Orders> findAllOrders() {
		// TODO Auto-generated method stub
		return oDao.findAllOrders();
	}
	
	/**
	 *增加 
	 */
	public void addOrders(Orders o) {
		// TODO Auto-generated method stub
		oDao.addOrders(o);
	}
	
	/**
	 *根据id查询 
	 */
	public Orders findOrdersById(int id) {
		// TODO Auto-generated method stub
		return oDao.findOrdersById(id);
	}
	
	/**
	 *根据id修改
	 */
	public void updateOrdersById(Orders o) {
		// TODO Auto-generated method stub
		oDao.updateOrdersById(o);
	}
	
	/**
	 *根据id删除
	 */
	public void deleteOrdersById(int id) {
		// TODO Auto-generated method stub
		oDao.deleteOrdersById(id);
	}


	/**
	 *批量删除
	 */
	public void deleteOrders(List list) {
		// TODO Auto-generated method stub
		oDao.deleteOrders(list);
	}

	/**
	 * 根据订单编号查询订单
	 */
	public Orders findOrdersByordernum(String id) {
		
		return oDao.findOrdersByordernum(id);
	}

	

	

	

	
}
