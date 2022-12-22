package tw.com.eeit.petforum.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.com.eeit.petforum.conn.ConnectionFactory;
import tw.com.eeit.petforum.user.model.bean.Users;

@WebServlet("/GetUser.do")
public class GetUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String uID = request.getParameter("uID");
		String SQL = "SELECT * FROM [PetForum].[dbo].[Users] WHERE id = ?";
		try {
			Connection conn = ConnectionFactory.getConnection();
			PreparedStatement preState = conn.prepareStatement(SQL);
			
			preState.setString(1, uID);
			ResultSet rs = preState.executeQuery();
			Users u = new Users();
			if (rs.next()) {
				u.setAccount(rs.getString("account"));
				u.setId(rs.getString("id"));
				u.setPhoto(rs.getString("photo"));
			}
			
			rs.close();
			preState.close();
			conn.close();
			
			
			System.out.println("AAAAAAAAA");
			request.setAttribute("user", u);
			request.getRequestDispatcher("pages/showUser.jsp").forward(request, response);
			
			
//			response.setContentType("text/html;charset=UTF-8");
//			PrintWriter out = response.getWriter();
//			
//			out.write("<div>ID: " + u.getId());
//			out.write("<div>帳號: " + u.getAccount());
//			
//			out.close();
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
