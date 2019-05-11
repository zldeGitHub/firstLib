package com.util;

import java.io.Serializable;

/**
 * ҳ������
 * @author Administrator
 *
 */
public class PageAssitant implements Serializable {

	/** �ܼ�¼�� */ //���ݱ��з���Ҫ������ݵ�����, �ɲ�ѯ����ѯ�õ�
	private int count;
	/** ��ҳ�� */ //���������������ܹ����Է�Ϊ����ҳ��ʾ, ���ܼ�¼����ҳ���С����õ�
	private int totalPage;
	/** ҳ���С */ //ÿҳ��ʾ����������, ��ҳ�洫�ݵĲ�������
	private int pageSize = 5;
	/** ��ǰҳ */ //��ǰ��Ҫ��ѯ��ҳ�����, ��ҳ�洫�ݵĲ�������
	private int currPage = 1;
	/** ��ʼ��¼��� */ //���������ݿ�ʼ��ѯ, �ɵ�ǰҳ��ҳ���С����
	private int start = 0;
	
	@Override
	public String toString() {
		return "PageAssitant [count=" + count + ", totalPage=" + totalPage + ", pageSize=" + pageSize + ", currPage="
				+ currPage + ", start=" + start + "]";
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
		setTotalPage();
	}

	public int getTotalPage() {
		return totalPage;
	}

	private void setTotalPage() {
		
		this.totalPage = this.count / this.pageSize;
		//�ж�, �Ƿ��������
		if(this.count % this.pageSize != 0) {
			this.totalPage++;
		}
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
		setTotalPage();
		setStart();
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
		setStart();
	}

	public int getStart() {
		return start;
	}

	private void setStart() {
		this.start = (this.currPage-1) * this.pageSize;
	}
	
}
