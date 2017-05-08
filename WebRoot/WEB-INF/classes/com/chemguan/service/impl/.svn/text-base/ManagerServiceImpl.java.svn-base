package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.ManagerDao;
import com.chemguan.entity.Manager;
import com.chemguan.service.ManagerService;


@Service
@Transactional
public class ManagerServiceImpl implements ManagerService {
	
	@Resource
	ManagerDao mDao;

	public Manager loginback(Manager m) {
		// TODO Auto-generated method stub
		return mDao.loginback(m);
	}

	public void addManager(Manager m) {
		// TODO Auto-generated method stub
		mDao.addManager(m);
	}

	public void deleteManager(List list) {
		// TODO Auto-generated method stub
		mDao.deleteManager(list);
	}

	public void deleteManagerById(int id) {
		// TODO Auto-generated method stub
		mDao.deleteManagerById(id);
	}

	public List<Manager> findAllManager() {
		// TODO Auto-generated method stub
		return mDao.findAllManager();
	}

	public Manager findManagerById(int id) {
		// TODO Auto-generated method stub
		return mDao.findManagerById(id);
	}

	public void updateManagerById(Manager m) {
		// TODO Auto-generated method stub
		mDao.updateManagerById(m);
	}

}
