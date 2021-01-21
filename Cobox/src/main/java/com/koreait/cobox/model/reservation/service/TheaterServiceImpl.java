package com.koreait.cobox.model.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.cobox.model.reservation.repository.TheaterDAO;

@Service
public class TheaterServiceImpl implements TheaterService{
	@Autowired
	private TheaterDAO theaterDAO;
	@Override
	public List selectAll() {
		return theaterDAO.selectAll();
	}
	@Override
	public List selectAllById(int location_id) {
		return theaterDAO.selectAllById(location_id);
	}
}