package com.chemguan.entity;

import java.util.List;

/**
 * 后台分页的封装类
 * @author 郭胜
 *
 */
public class PageBean {

	/**
	 * 这三条数据要从数据库中查询得到
	 */
	private int currentPage;//当前页码
	private int recordCount;//总记录数
	private int pageSize;//一页显示多少条数据
	private List recordList;//页面要显示的数据集合
	
	/**
	 * 这三条数据要根据上面的三条数据计算出来
	 */
	private int pageCount;//总页数
	private int beginPageIndex;//开始页码
	private int endPageIndex;//结束页码
	
	/**
	 * 构造方法
	 */
	public PageBean(){};
	public PageBean(int currentPage,int recordCount,int pageSize,List recordList){
		this.currentPage = currentPage;
		this.recordCount = recordCount;
		this.recordList = recordList;
		this.pageSize = pageSize;
		
		this.pageCount = (this.recordCount + this.pageSize - 1)/this.pageSize;
		
		if(pageCount <= 10){
			this.beginPageIndex = 1;
			this.endPageIndex = pageCount;
		}else{
			this.beginPageIndex = currentPage -4;
			this.endPageIndex = currentPage + 5;
			if(this.beginPageIndex<1){
				this.beginPageIndex = 1;
				this.endPageIndex = 10;
			}
			if(this.endPageIndex>pageCount){
				this.beginPageIndex = this.pageCount - 9;
				this.endPageIndex = this.pageCount;
			}
		}
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List getRecordList() {
		return recordList;
	}
	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getBeginPageIndex() {
		return beginPageIndex;
	}
	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}
	public int getEndPageIndex() {
		return endPageIndex;
	}
	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}
}
