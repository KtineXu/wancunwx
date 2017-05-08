package com.chemguan.service;

import java.util.List;

import com.chemguan.entity.ForumReply;

public interface ForumReplyService {
	/**
	 * 查询所有信息
	 */
	public List<ForumReply> findAllForumReply();
	/**
	 * 新增信息
	 */
	public void addForumReply(ForumReply w);
	
	/**
	 * 根据ID查询信息
	 */
	public ForumReply findForumReplyById(int id);
	
	/**
	 * 根据ID修改信息
	 */
	public void updateForumReply(ForumReply w);
	/**
	 * 根据ID删除信息
	 */
	public void deleteForumReplyById(int id);
	
	/**
	 * 批量删除信息
	 */
	public void deleteForumReply(List list);
	
	/**
	 * 根据主题帖id查询回复
	 */
	public List<ForumReply> findForumReplyByforumId(int id);
	
}
