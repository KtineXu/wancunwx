package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.ForumsDao;
import com.chemguan.entity.Forums;
import com.chemguan.service.ForumsService;

/***
 * forums的service层实现类
 * @author guosheng
 *
 */
@Service
@Transactional
public class ForumsServiceImpl implements ForumsService {

	@Resource
	private ForumsDao forumsDao;
	
	/**
	 * 新增
	 */
	public void addForums(Forums c) {
		forumsDao.addForums(c);
	}

	/**
	 * 批量删除
	 */
	public void deleteForums(List list) {
		forumsDao.deleteForums(list);
	}

	/**
	 * 根据id删除
	 */
	public void deleteForumsById(int id) {
		forumsDao.deleteForumsById(id);
	}

	/**
	 * 查询所有
	 */
	public List<Forums> findAllForums() {
		return forumsDao.findAllForums();
	}

	/**
	 * 根据id 查询一个
	 */
	public Forums findForumsById(int id) {
		return forumsDao.findForumsById(id);
	}

	/**
	 * 更新
	 */
	public void updateForums(Forums c) {
		forumsDao.updateForums(c);
	}

	/**
	 * 根据栏目id查询所有
	 */
	public List<Forums> findAllForumsbycolum(int columid) {		
		return forumsDao.findAllForumsbycolum(columid);
	}

}
