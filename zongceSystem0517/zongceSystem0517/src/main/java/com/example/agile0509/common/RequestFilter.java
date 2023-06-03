package com.example.agile0509.common;

/**
 * @author Junzhe
 * @ClassName RequestFilter
 * @date 2023/5/16 19:00
 */

/**
 * @author YuanYue
 * 进行修改：明确允许content-type，避免服务器未正确处理预检请求
 * @date 2023/5/20
 */

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 改写所有请求头
 * @date 2018/12/11 15:19
 */
@WebFilter(filterName = "requestFilter",urlPatterns = {"/*"})
public class RequestFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest)servletRequest;

        String origin = request.getHeader("Origin");
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "3600");
        response.setHeader("Access-Control-Allow-Headers", "x-requested-with,Authorization,content-type");//加了content-type确保跨域请求的预检请求和实际请求都能正常通过。
        response.setHeader("Access-Control-Allow-Credentials", "true");
        String method = request.getMethod();
        if(method.equalsIgnoreCase("OPTIONS")){
            servletResponse.getOutputStream().write("Success".getBytes("utf-8"));
        }else{
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }

}

