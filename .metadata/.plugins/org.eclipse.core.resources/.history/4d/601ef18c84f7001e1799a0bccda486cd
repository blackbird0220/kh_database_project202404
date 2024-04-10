package org.ganeseo.ctrl.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gangseo.dao.MemberDAO;
import org.gangseo.dto.Member;


@WebServlet("/LoginPro.do")
public class LoginProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginProCtrl() {
        super();
    
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		Member mem = dao.getMember(id); //dao 안만들어서 오류남
		
		HttpSession session =request.getSession();
		PrintWriter out = response.getWriter();
		RequestDispatcher view;
		
		if(id)
		
		
	}

}
