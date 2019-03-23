package com.project.DAO;

import java.util.List;

import com.project.model.FeedbackVO;

public interface FeedbackDAO {
	public void insertFeedback(FeedbackVO feedBackVO);
	public List viewFeedback();

}
