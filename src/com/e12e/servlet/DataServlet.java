package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e12e.bean.StudentInfo2;

import sun.applet.AppletPanel;

/**
 * 加载初始化数据（web.xml中设置了load-on-startup）
 * @author Coande
 *
 */

public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DataServlet() {
        super();
    }
    
    @Override
    public void init() throws ServletException {
    	System.out.println("DataServlet被初始化了！！！");
    	ArrayList<StudentInfo2> list=new ArrayList<StudentInfo2>();
    	list.add(new StudentInfo2(1, "peter", 20, "4班", "男", "汉", "出生地"));
    	list.add(new StudentInfo2(2, "明方", 17, "2班", "男", "汉", "山东"));
    	list.add(new StudentInfo2(3, "小红", 19, "3班", "男", "汉", "北京"));
    	list.add(new StudentInfo2(4,"小雨",18,"1班","男","汉","海南"));
    	this.getServletContext().setAttribute("studentList", list);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
