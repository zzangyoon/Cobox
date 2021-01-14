package com.koreait.cobox.model.snack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.cobox.model.domain.TopCategory;
import com.koreait.cobox.model.snack.repository.TopCategoryDAO;

@Service
public class TopCategoryServiceImpl implements TopCategoryService{

	@Autowired
	private TopCategoryDAO topCategoryDAO;
	
	@Override
	public List selectAll() {
		return topCategoryDAO.selectAll();
	}

	@Override
	public TopCategory select(int topcategory_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(TopCategory topcategory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(TopCategory topcategory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int topcategory_id) {
		// TODO Auto-generated method stub
		
	}

}
