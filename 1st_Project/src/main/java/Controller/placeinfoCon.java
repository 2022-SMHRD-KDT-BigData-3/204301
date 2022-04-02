package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.placeDAO;
import Model.placeDTO;


@WebServlet("/placeinfoCon")
public class placeinfoCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ArrayList<placeDTO> list = new ArrayList<placeDTO>();
		
		placeDAO dao = new placeDAO();
		
		list = dao.placeinfo();
		
		if(list != null) {
			
		} else {
			
		}
	}

}
