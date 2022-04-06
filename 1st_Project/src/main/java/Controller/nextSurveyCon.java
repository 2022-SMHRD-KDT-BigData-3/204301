package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.userDAO;
import Model.userDTO;

@WebServlet("/nextSurveyCon")
public class nextSurveyCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String nickname = request.getParameter("user_id");
		String archive = request.getParameter("archive");
		String nextletter = request.getParameter("nextletter");
		
		System.out.println(nickname);
		System.out.println(archive);
		System.out.println(nextletter);
		
		userDTO dto = new userDTO(nickname, nextletter);
		userDAO dao = new userDAO();
		
		int cnt = dao.updateUser(dto);
		
		if(cnt != 0) {
			System.out.println("UserData Update Success");
			
			//session.removeAttribute("info");
			session.invalidate();
			
		} else {
			System.out.println("UserData Update Fail");
		}
		
		response.sendRedirect("./main.jsp");
	}

}
