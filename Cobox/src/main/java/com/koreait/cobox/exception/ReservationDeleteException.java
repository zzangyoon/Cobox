package com.koreait.cobox.exception;

public class ReservationDeleteException extends RuntimeException{
	public ReservationDeleteException(String msg) {
		super(msg);
	}
	public ReservationDeleteException(String msg, Throwable e) {
		super(msg, e);
	}
}
