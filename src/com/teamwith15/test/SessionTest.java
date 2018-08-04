package com.teamwith15.test;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.teamwith15.dao.InterviewQuestionDAO;
import com.teamwith15.dao.PortfolioContentDAO;
import com.teamwith15.dto.InterviewQuestionDTO;
import com.teamwith15.dto.PortfolioContentDTO;

public class SessionTest {
	public static void main(String[] args) {
		//�� ���� �����ڿ��� ���������� �ϴ���
		String config = "com/teamwith15/config/config.xml";
		SqlSessionFactory factory = null;
		try {
			InputStream is = Resources.getResourceAsStream(config);
			factory = new SqlSessionFactoryBuilder().build(is);
		} catch (Exception e) {
			e.printStackTrace();
		}
		SqlSession session = factory.openSession();

		//���� ���� ������ ��Ʈ������ �������� �߰��ϴ� ���� �޼ҵ�
		InterviewQuestionDAO interviewQuestionDAO = session.getMapper(InterviewQuestionDAO.class);
		PortfolioContentDAO portfolioContentDAO = session.getMapper(PortfolioContentDAO.class);
		int result=1;//����� ���� ����

		// ���ܸ������� ������� 
		InterviewQuestionDTO interviewQuestion = new InterviewQuestionDTO();
		interviewQuestion.setInterviewQuestionContent("���� �׽�Ʈ ����");
		interviewQuestion.setInterviewQuestionId("interview_question-7");
		interviewQuestion.setTeamId("team-2");
		try {
			interviewQuestionDAO.addInterviewQuestion(interviewQuestion);
		
		// ��Ʈ������ ������ �߰� ����
			PortfolioContentDTO pc = new PortfolioContentDTO();
			pc.setPortfolioContentId("portfolio_content-91");
			pc.setPortfolioId("portfolio-1");
			pc.setPortfolioContentOrder(2);
			pc.setLayoutId("t2");
			pc.setPortfolioContentName("portfolio_content-91 name");
			pc.setPortfolioContentValue("portfolio_content-91 value");
			try {
				Integer.parseInt("����"); //������ ���� �߻���Ŵ // Ʈ����� �Ϸ� ��Ȳ �׽�Ʈ�� �� ���� �ּ�����.
				portfolioContentDAO.addPortfolioContent(pc);
			} catch (Exception e) {
				result=0;	//��Ʈ������ ������ �߰� ���н�
				e.printStackTrace();
			}
		} catch (Exception e) {
			result=0;		//���ͺ������� �߰� ���н�
			e.printStackTrace();
		}
		
		//������� ���� Ʈ����� ó��
		if(result==0) {	
			session.rollback();
		}
		else if(result==1) {
			session.commit();
		}
		session.close();
		System.out.println("�Ϸ�");
	}
}
