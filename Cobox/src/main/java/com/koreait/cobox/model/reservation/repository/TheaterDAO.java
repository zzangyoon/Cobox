package com.koreait.cobox.model.reservation.repository;

import java.util.List;

public interface TheaterDAO {
	public List selectAll();
	public List selectAllById(int location_id);//������ ��ġ�� �Ҽӵ� ���� ī�װ�
}