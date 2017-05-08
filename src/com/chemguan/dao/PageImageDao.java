package com.chemguan.dao;

import java.util.List;

import com.chemguan.po.PageImage;


public interface PageImageDao {
	
	public List<PageImage> findWorks();
	
	public List<PageImage> findProducts();

	/**
	 * 查询首页轮播图片用的
	 * @return
	 */
	public PageImage findFirstPageImage();

	/**
	 * 修改首页轮播图片
	 * @param pi
	 */
	public void updateFirstPageImage(PageImage pi);
	
}
