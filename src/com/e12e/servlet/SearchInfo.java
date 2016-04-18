package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e12e.bean.StudentInfo;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
/**
 * 
 * @author Coande
 *处理查询学生信息的Servlet
 */

public class SearchInfo extends HttpServlet {
	ArrayList<StudentInfo> studentInfos;
	/**
	 * 模拟数据库
	 */
	@Override
	public void init() throws ServletException {

		
		//用List来存放所有学生的信息
		studentInfos=new ArrayList<StudentInfo>();
		
		//第一个学生
		//一个学生信息对象
		StudentInfo studentInfo=new StudentInfo();
 		studentInfo.setStudentName("peter");
		studentInfo.setStudentAge(25);
		studentInfo.setStudentClass("2");
		studentInfos.add(studentInfo);
		
		//第二个学生
		StudentInfo studentInfo2=new StudentInfo();
		studentInfo2.setStudentName("lilei");
		studentInfo2.setStudentAge(22);
		studentInfo2.setStudentClass("1");
		studentInfos.add(studentInfo2);
		
		StudentInfo studentInfo3=new StudentInfo();
		studentInfo3.setStudentName("alex");
		studentInfo3.setStudentAge(26);
		studentInfo3.setStudentClass("2");
		studentInfos.add(studentInfo3);
		
		StudentInfo studentInfo4=new StudentInfo();
		studentInfo4.setStudentName("leo");
		studentInfo4.setStudentAge(19);
		studentInfo4.setStudentClass("3");
		studentInfos.add(studentInfo4);
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	/**
	 * 处理查询学生信息
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentName=request.getParameter("studentName");
		
		for(StudentInfo studentInfo:studentInfos){
			if(studentInfo.getStudentName().equals(studentName)){
				response.sendRedirect(request.getContextPath()+"/searchinfo.html?studentName="+studentInfo.getStudentName()+"&studentAge="
						+studentInfo.getStudentAge()+ "&studentClass="+studentInfo.getStudentClass());
				return;
			}
		}
		response.sendRedirect(request.getContextPath()+"/searchinfo.html?studentName=&studentAge=&studentClass=");
	}

}
