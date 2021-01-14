package com.koreait.cobox.model.cartpay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.cobox.exception.CartException;
import com.koreait.cobox.model.cartpay.repository.CartDAO;
import com.koreait.cobox.model.domain.Cart;

@Service
public class CartPayServiceImpl implements CartPayService{
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public List selectCartList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectCartList(int member_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart selectCart(int cart_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Cart cart) throws CartException{
		cartDAO.insert(cart);
		
	}

	@Override
	public void update(Cart cart) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Cart cart) {
		// TODO Auto-generated method stub
		
	}


}
