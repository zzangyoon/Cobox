package com.koreait.cobox.model.snack.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.cobox.model.domain.TopCategory;

@Repository
public class MybatisTopCategoryDAO implements TopCategoryDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("TopCategory.selectAll");
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
