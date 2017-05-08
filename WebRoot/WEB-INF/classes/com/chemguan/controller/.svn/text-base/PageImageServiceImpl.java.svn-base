package com.chemguan.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chemguan.dao.PageImageDao;
import com.chemguan.po.PageImage;
import com.chemguan.service.PageImageService;

/**
 * pageimage各个页面的轮播图片
 * @author Administrator
 *
 */
@Service
public class PageImageServiceImpl implements PageImageService {

	@Resource
	private PageImageDao pageImageDao;
	/**
	 * 查询首页轮播图片
	 */
	public PageImage findFirstPageImage() {
		return pageImageDao.findFirstPageImage();
	}
	
	/**
	 * 修改首页轮播图片
	 */
	public void updateFirstPageImage(PageImage pi) {
		pageImageDao.updateFirstPageImage(pi);
	}

}
