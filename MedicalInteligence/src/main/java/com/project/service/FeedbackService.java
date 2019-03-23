package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;
import com.project.DAO.FeedbackDAO;
import com.project.model.FeedbackVO;

@Service
public class FeedbackService {
	
	@Autowired
	FeedbackDAO feedBackDAO;

	@Transactional
	public void insertFeedback(FeedbackVO feedBackVO)
	{
		this.feedBackDAO.insertFeedback(feedBackVO);
	}
	
	@Transactional
	public List viewFeedback()
	{
		List ls=this.feedBackDAO.viewFeedback();
		return ls;
	}
}
