package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chemguan.dao.MyOrdersDao;
import com.chemguan.entity.MyOrders;
import com.chemguan.entity.Users;
import com.chemguan.service.MyOrdersService;

@Service
public class MyOrdersServiceImpl implements MyOrdersService {

	@Resource
	private MyOrdersDao myordersdao;
	
	/**
	 * 按用户id去查询订单
	 */
	public List<MyOrders> findAllOrders(Users use) {
		return myordersdao.findAllOrders(use);
	}
	
	/**
	 * 产品详情
	 */
	public Map<String,Object> findAllid(Integer id)
	{
		return myordersdao.findAllid(id);
	}

}
