package bookstore.servlet;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookstore.model.Cart;

/**
 * Servlet implementation class QuantityIncDecServlet
 */
@WebServlet("/QuantityIncDecServlet")
public class QuantityIncDecServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action= request.getParameter("action");
		int id=Integer.parseInt(request.getParameter("id"));
		
		ArrayList <Cart> cart_list = ArrayList<Cart> request.getSession().getAttribute("cart-list");
		
	    int index = -1;
	    for (int i = 0; i < cart_list.size(); i++) {
	        if (cart_list.get(i).getId() == id) {
	            index = i;
	            break;
	        }
	    }

	    if (index != -1) {
	        Cart c = cart_list.get(index);
	        int quantity = c.getQuantity();
	        if (action.equals("inc")) {
	            quantity++;
	        } else if (action.equals("dec")) {
	            quantity--;
	        }
	        c.setQuantity(quantity);
	        request.getSession().setAttribute("cart-list", cart_list);
	        response.sendRedirect("Checkout.jsp");
	    }
		
		if(action!=null && id>=1)
		{
			if(action.equals("inc"))
			{
				for (Cart c:cart_list)
				{
					if(c.getId()==id)
					{
						int quantity=c.getQuantity();
						quantity++;
						c.setQuantity(quantity);
						response.sendRedirect("Checkout.jsp");
					}
				}
			}
		}
	
	
	}

}
