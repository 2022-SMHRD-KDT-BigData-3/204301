package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.placeDAO;
import Model.placeDTO;


@WebServlet("/placeinfoCon")
public class placeinfoCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ArrayList<placeDTO> list = new ArrayList<placeDTO>();
		
		placeDAO dao = new placeDAO();
		
		list = dao.placeinfo(); // DB 에서 가져온 데이터값 
		
		if(list != null) {
			// 제대로 데이터를 가져온 상황 게임창(.jsp)에서 데이터를 사용할 수 있게 해야한다. 
			System.out.println("Success Select PlaceInfo..");
			
			HttpSession session = request.getSession();
			session.setAttribute("placeinfo", list);
			
			response.sendRedirect("./map.jsp");
			
		} else {
			// 데이터를 못받아옴 실패함 
			System.out.println("Fail Select PlaceInfo..");
			
			response.sendRedirect("./main.jsp");
		}
		
	}

}
