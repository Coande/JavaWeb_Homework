package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e12e.bean.Student;
/**
 * 
 * @author Coande
 *处理查询学生信息的Servlet
 */

public class StudentInfoSearchAction extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	/**
	 * 处理查询学生信息
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentName=request.getParameter("studentName");
		ArrayList<Student> students=(ArrayList<Student>) request.getServletContext().getAttribute("students");
		for(Student student:students){
			if(student.getName().equals(studentName)){
				response.sendRedirect(request.getContextPath()+"/content/StudentInfoSearch.jsp?studentName="+student.getName()+"&studentAge="
						+student.getAge()+ "&studentClass="+student.getGrade());
				return;
			}
		}
		response.sendRedirect(request.getContextPath()+"/content/StudentInfoSearch.jsp??studentName=&studentAge=&studentClass=");
	}

}
