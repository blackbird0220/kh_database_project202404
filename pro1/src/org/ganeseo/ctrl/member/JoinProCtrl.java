package org.ganeseo.ctrl.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gangseo.dao.MemberDAO;
import org.gangseo.dto.Member;


@WebServlet("/JoinPro.do")
public class JoinProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public JoinProCtrl() {
        super();
        
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		
		
		Member mem = new Member(request.getParameter("id"),
				request.getParameter("pw"),
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(mem);
		if(cnt>0) { 	//회원가입 성공하면
			response.sendRedirect(request.getContextPath());
		} else {
			response.sendRedirect("/Join.do");
		}
	}	
		
				
	}

}