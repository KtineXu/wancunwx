package com.chemguan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chemguan.dao.ForumReplyDao;
import com.chemguan.entity.ForumReply;
import com.chemguan.service.ForumReplyService;

/***
 * forumReply的service层实现类
 * @author guosheng
 *
 */
@Service
@Transactional
public class ForumReplyServiceImpl implements ForumReplyService {
	@Resource
	private ForumReplyDao forumReplyDao;

	/**
	 * 新增
	 */
	public void addForumReply(ForumReply w) {
		forumReplyDao.addForumReply(w);
	}

	/**
	 * 批量删除
	 */
	public void deleteForumReply(List list) {
		forumReplyDao.deleteForumReply(list);
	}

	/**
	 * 根据id删除
	 */
	public void deleteForumReplyById(int id) {
		forumReplyDao.deleteForumReplyById(id);
	}

	/**
	 * 查询所有
	 */
	public List<ForumReply> findAllForumReply() {
		return forumReplyDao.findAllForumReply();
	}

	/**
	 * 根据id查询单个
	 */
	public ForumReply findForumReplyById(int id) {
		return forumReplyDao.findForumReplyById(id);
	}

	/**
	 * 修改
	 */
	public void updateForumReply(ForumReply w) {
		forumReplyDao.updateForumReply(w);
	}

	/**
	 * 根据主题帖id查询回复
	 */
	public List<ForumReply> findForumReplyByforumId(int id) {
		return forumReplyDao.findForumReplyByforumId(id);
	}

}
