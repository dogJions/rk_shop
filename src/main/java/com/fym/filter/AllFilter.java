package com.fym.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class AllFilter
 */
public class AllFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AllFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//跨域调用
		HttpServletResponse httpResponse=(HttpServletResponse) response;
		httpResponse.addHeader("Access-Control-Allow-Origin", "*");
	    httpResponse.addHeader("Access-Control-Allow-Headers", "Origin, x-requested-with, Content-Type, Accept,X-Cookie");
	    httpResponse.addHeader("Access-Control-Allow-Credentials", "true");
	    httpResponse.addHeader("Access-Control-Allow-Methods", "GET,POST,PUT,OPTIONS,DELETE");
	    
	    //
	    request.setCharacterEncoding("UTF-8");
		HttpServletRequest ServletRequest = (HttpServletRequest) request;
		String ctx = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ ServletRequest.getContextPath();

		request.setAttribute("ctx", ctx);
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
