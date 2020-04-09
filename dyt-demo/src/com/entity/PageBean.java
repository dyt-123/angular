package com.entity;

import java.util.List;
import java.util.Map;

public class PageBean<T> {
    
	private int pageCount=3;
	private int page;
	private int tolPage;
	private int tolCount;
	private int beginCount;
	private Map<String,Object> map;
	private List<T> list;
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPage() {
		if(page<1){
			page=1;
		}
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTolPage() {
		if(tolCount%pageCount>0){
			tolPage=tolCount/pageCount+1;
		}else{
			tolPage=tolCount/pageCount;
		}
		return tolPage;
	}
	public void setTolPage(int tolPage) {
		this.tolPage = tolPage;
	}
	public int getTolCount() {
		return tolCount;
	}
	public void setTolCount(int tolCount) {
		this.tolCount = tolCount;
	}
	public int getBeginCount() {
		this.setBeginCount((this.getPage()-1)*this.getPageCount());
		return beginCount;
	}
	public void setBeginCount(int beginCount) {
		this.beginCount = beginCount;
	}
	public Map<String,Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
}
