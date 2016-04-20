package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e12e.bean.Student;

public class StudentInfoManageAction extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		if(id!=null){
			// 保存操作
			if ("save".equals(req.getParameter("type"))) {
				String name=req.getParameter("name_"+id);
				String age=req.getParameter("age_"+id);
				String sex=req.getParameter("sex_"+id);
				String Minzu=req.getParameter("Minzu_"+id);
				String bornPlace=req.getParameter("bornPlace_"+id);
				
				ServletContext application=req.getServletContext();
				ArrayList<Student> students=(ArrayList<Student>) application.getAttribute("students");
				for(int i=0;i<students.size();i++){
					if((students.get(i).getId()+"").equals(id)){
						Student student=new Student();
						student.setId(students.get(i).getId());
						student.setName(name);
						student.setAge(Integer.parseInt(age));
						student.setSex(sex);
						student.setMinzu(Minzu);
						student.setBornPlace(bornPlace);
						
						students.set(i, student);
						application.setAttribute("students", students);
						
					}
				}
			}
			//删除操作
			else if ("delete".equals(req.getParameter("type"))) {
				ServletContext application=req.getServletContext();
				ArrayList<Student> students=(ArrayList<Student>) application.getAttribute("students");
				for(int i=0;i<students.size();i++){
					if((students.get(i).getId()+"").equals(id)){
						students.remove(i);
						application.setAttribute("students", students);
					}
				}
			}
		}
		
		resp.sendRedirect(req.getContextPath()+"/content/StudentInfoManage.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
