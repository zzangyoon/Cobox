package com.koreait.cobox.client.controller.cartpay;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.cobox.exception.CartException;
import com.koreait.cobox.model.cartpay.service.CartPayService;
import com.koreait.cobox.model.common.MessageData;
import com.koreait.cobox.model.domain.Cart;

@Controller
public class CartPayController {
	private static final Logger logger = LoggerFactory.getLogger(CartPayController.class);
	
	@Autowired
	private CartPayService cartPayService;
	
	//장바구니에 담기
	@PostMapping(value="/cart/regist")
	@ResponseBody
	public MessageData registCart(Cart cart) {
		logger.debug("snack_id "+cart.getSnack_id());
		logger.debug("quantity "+cart.getQuantity());
		cart.setMember_id(2);	//아직 회원안만듬
		cartPayService.insert(cart);
		
		//VO가 json형태로 convert
		MessageData messageData = new MessageData();
		messageData.setResultCode(1);
		messageData.setMsg("장바구니에 상품이 담겼습니다");
		messageData.setUrl("/cart/list");
		
		return messageData;
	}
	
	
	@GetMapping("/cart/list")
	public ModelAndView getCartList() {
		ModelAndView mav = new ModelAndView("client/cart/list");
		return mav;
	}
	

	
	//장바구니 관련 예외처리 핸들러
	@ExceptionHandler(CartException.class)
	@ResponseBody
	public MessageData handleException(CartException e) {
		MessageData messageData = new MessageData();
		messageData.setResultCode(0);
		messageData.setMsg(e.getMessage());
		
		return messageData;
	}
	
}
