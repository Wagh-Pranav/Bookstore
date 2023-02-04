package bookstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bookstore.model.Cart;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html	; charset UTF-8");
		
		try(PrintWriter out =response.getWriter()){
			ArrayList <Cart> cartList= new ArrayList<>();
			
			int id=Integer.parseInt(request.getParameter("id"));
			Cart cm=new Cart();
			cm.setId(id);
			cm.setQuantity(1);
			
			HttpSession session=request.getSession();
			ArrayList <Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
			
			if (cart_list==null)
			{
				cartList.add(cm);
				session.setAttribute("cart-list",cartList);
				out.println("Session created and added to list");
			}
			else 
			{
				out.println("Cart list exist");
			}
		}
		
	}

}
