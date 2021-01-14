package com.koreait.cobox.model.cartpay.service;

import java.util.List;

import com.koreait.cobox.model.domain.Cart;

public interface CartPayService {
	//Cart관련
	public List selectCartList();
	public List selectCartList(int member_id);	//회원만
	public Cart selectCart(int cart_id);
	public void insert(Cart cart);
	public void update(Cart cart);
	public void delete(Cart cart);

	//Pay
	
}
