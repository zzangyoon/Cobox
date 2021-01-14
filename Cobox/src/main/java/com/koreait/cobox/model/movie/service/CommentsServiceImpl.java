package com.koreait.cobox.model.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.cobox.model.comments.repository.CommentsDAO;
import com.koreait.cobox.model.domain.Comments;

@Service
public class CommentsServiceImpl implements CommentsService{
	@Autowired
	private CommentsDAO commentsDAO;
	
	@Override
	public List selectAll(int movie_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Comments comments) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int comments_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
