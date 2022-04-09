package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.resultDAO;
import Model.resultDTO;


@WebServlet("/exitTajaCon")
public class exitTajaCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("exitTaja");
		
		
		String nickname = request.getParameter("nickname");
		int score = Integer.parseInt(request.getParameter("score"));
		
		
		System.out.println("nickname : " + nickname);
		
		
		
		resultDAO dao = new resultDAO();
		int cnt = dao.updateData(nickname,score);
		
		if(cnt > 0) {
			System.out.println("데이터 삽입 성공");
			// 로그인 정보가 담긴 session 업데이트, 갱신
			// -> 같은 session 이름에 다른 값 담아주기(덮어쓰기)
			//HttpSession session = request.getSession();
			//session.setAttribute("info", updated_info);
			
		} else {
			System.out.println("데이터 삽입 실패");
		}
		
		response.sendRedirect("./map.jsp");
	}
}
