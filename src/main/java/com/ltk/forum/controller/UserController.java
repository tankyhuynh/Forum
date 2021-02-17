package com.ltk.forum.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import com.ltk.forum.model.UserModel;
import com.ltk.forum.repository.UserRepo;
import com.ltk.forum.services.UserService;

/**
 * Servlet implementation class UserController
 */

@WebServlet(urlPatterns = "/users")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Autowired
    private UserRepo userRepo;
	
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Update ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			List<UserModel> listUsers = userRepo.findAll();
			
			response.getWriter().append("List Users: ");
			for (UserModel userModel : listUsers) {
//				response.getWriter().append( userModel.getHoTen() );
			}
		} catch (Exception e) {
			System.out.println("Null");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
