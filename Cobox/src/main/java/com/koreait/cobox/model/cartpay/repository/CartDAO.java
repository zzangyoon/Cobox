package com.koreait.cobox.model.cartpay.repository;

import java.util.List;

import com.koreait.cobox.model.domain.Cart;

public interface CartDAO {
	public List selectAll();
	public List selectAll(int member_id);	//회원만
	public Cart select(int cart_id);
	public void insert(Cart cart);
	public void update(Cart cart);
	public void delete(Cart cart);
}
