package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.OrderConfirmDao;
import com.chemguan.entity.OrderConfirm;
import com.chemguan.service.OrderConfirmService;

@Service
@Transactional
public class OrderConfirmSrviceImpl implements OrderConfirmService {
	
	@Resource
	private OrderConfirmDao orderconfirmdao;

	public List<OrderConfirm> findOrderUserId(Integer id) {
		
		return orderconfirmdao.findOrderUserId(id);
	}

	public  Map<String,Object> findAllid(Integer id) {
		return orderconfirmdao.findAllid(id);
	}

	public  Double findUserScore(Integer id) {
		return orderconfirmdao.findUserScore(id);
	}
	
	/**
	 * 根据物品id去查询物品的积分
	 */
	public Double findProductsScore(Integer id){
		return orderconfirmdao.findProductsScore(id);
	}
}
