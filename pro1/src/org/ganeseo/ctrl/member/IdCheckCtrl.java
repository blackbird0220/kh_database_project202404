package org.ganeseo.ctrl.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gangseo.dao.MemberDAO;
import org.gangseo.dto.Member;


@WebServlet("/IdCheck.do")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public IdCheckCtrl() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean pass = false;
		MemberDAO dao = new MemberDAO();
		Member mem = new Member();
		mem = dao.getMember(id);
		
		JSONObject json = new JSONObject(); //jar
		json.put("result", pass)
		PrintWriter out =response.getWriter();
		out.println(json.)
		
		
	}

}