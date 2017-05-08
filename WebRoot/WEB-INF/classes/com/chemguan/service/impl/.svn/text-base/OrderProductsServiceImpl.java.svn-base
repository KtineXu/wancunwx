package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.OrderProductsDao;
import com.chemguan.entity.OrderProducts;
import com.chemguan.entity.Orderserviceproduct;
import com.chemguan.service.OrderProductsService;
@Service
@Transactional
public class OrderProductsServiceImpl implements OrderProductsService{
	
	@Resource
	OrderProductsDao opDao;
	
	/**
	 * 查所有
	 */
	public List<OrderProducts> findAllOrderProducts() {
		// TODO Auto-generated method stub
		return opDao.findAllOrderProducts();
	}
	
	/**
	 * 增加
	 */
	public void addOrderProducts(OrderProducts op) {
		// TODO Auto-generated method stub
		opDao.addOrderProducts(op);
	}
	
	/**
	 * 根据id查询
	 */
	public OrderProducts findOrderProductsById(int id) {
		// TODO Auto-generated method stub
		return opDao.findOrderProductsById(id);
	}
	
	/**
	 * 根据id修改
	 */
	public void updateOrderProductsById(OrderProducts op) {
		// TODO Auto-generated method stub
		opDao.updateOrderProductsById(op);
	}
	
	/**
	 * 根据id删除
	 */
	public void deleteOrderProductsById(int id) {
		// TODO Auto-generated method stub
		opDao.deleteOrderProductsById(id);
	}
	
	/**
	 * 批量删除
	 */
	public void deleteOrderProducts(List list) {
		// TODO Auto-generated method stub
		opDao.deleteOrderProducts(list);
	}

	
	/**
	 * 查询订单产品信息
	 */
	/*public List<Orderserviceproduct> findAllOrderserviceProducts(int id) {		
		return opDao.findAllOrderserviceProducts(id);
	}*/

	
	/**
	 * 根据用户id查询所有延保过的产品
	 */
	public List<Orderserviceproduct> findybOrderProductsbycusid(int cusid) {
		return opDao.findybOrderProductsbycusid(cusid);
	}

}
