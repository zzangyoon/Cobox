package com.koreait.cobox.model.reservation.service;

import java.util.List;

public interface TheaterService {
	public List selectAll();
	public List selectAllById(int location_id);//������ ��ġ ī�װ��� �Ҽӵ� ���� ī�װ� ��ϰ�������
}