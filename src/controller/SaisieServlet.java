package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SaisieServlet
 */
@WebServlet("/SaisieServlet")
public class SaisieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaisieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String match = (String) session.getAttribute( "match" );
		if(match != null) {
			System.out.println(match);
			request.setAttribute("match", match);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/sasieTir.jsp");
	        rd.forward(request, response);
		}else{
			response.sendRedirect("ChoixMatchServlet");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain");
		String zoneArret = request.getParameter("zoneArret");
		String zoneTir = request.getParameter("zoneTir");
		String but = request.getParameter("but");
		System.out.println("zoneTir : "+zoneTir);
		System.out.println("zoneArret : "+zoneArret);
		System.out.println("but : "+but);
		PrintWriter outPrintWriter = response.getWriter();
		outPrintWriter.print("Enregistrement reussit");
	}

}
