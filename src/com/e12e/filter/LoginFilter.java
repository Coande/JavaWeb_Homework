package com.e12e.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginFilter implements Filter {
	private FilterConfig config;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		
		//解决乱码问题
		request.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");

		String noLoginPaths = config.getInitParameter("noLoginPaths");
		if (noLoginPaths != null) {
			String[] arr = noLoginPaths.split(";");
			for (int i = 0; i < arr.length; i++) {
				if(arr[i]==null||"".equals(arr[i])) continue;
				if (request.getRequestURI().indexOf(arr[i]) != -1) {
					System.out.println("放行："+request.getRequestURI());
					arg2.doFilter(arg0, arg1);
					return;
				}
			}

		}
		
		if (session.getAttribute("username") != null) {
			arg2.doFilter(arg0, arg1);
		} else {
			System.out.println("阻止："+request.getRequestURI());
			response.sendRedirect(request.getContextPath()+"/login.html");
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		config=arg0;
		
	}

}
