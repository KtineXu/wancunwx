package com.chemguan.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.IntegralMallDao;
import com.chemguan.entity.IntegralMall;
import com.chemguan.entity.Products;
import com.chemguan.service.IntegralMallService;

@Service
public class IntegralMallServiceImpl implements IntegralMallService {
	
	
	@Resource
	private IntegralMallDao integralmalldao;
	/**
	 * 查询绘图笔配件
	 */
	public List<IntegralMall> findAllProducts(Map map) {
		return integralmalldao.findAllProducts(map);
	}

	/**
	 * 查询其他产品
	 */
	public List<IntegralMall> findAllqita(Map map) {
		return integralmalldao.findAllqita(map);
	}

	/**
	 * 喜欢的商品
	 */
	public List<IntegralMall> findLike() {
		return integralmalldao.findLike();
	}


	/**
	 * 产品详情
	 */
	public  Products findAllid(Integer id) {
		return integralmalldao.findAllid(id);
	}
	
	/**
	 * 根据用户id去查询地址
	 */
	public String findAddress(Integer id )
	{
		return integralmalldao.findAddress(id);
		
	}
	/**
	 * 访问量+1
	 */
	public Integer visitCount(Map map) {
		return integralmalldao.visitCount(map);
	}
	
}

