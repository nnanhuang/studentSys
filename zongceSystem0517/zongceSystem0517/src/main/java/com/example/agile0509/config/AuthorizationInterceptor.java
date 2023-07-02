package com.example.agile0509.config;


import com.example.agile0509.pojo.Permission;
import com.example.agile0509.service.AuthService;
import com.example.agile0509.utils.JwtTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

@Component
public class AuthorizationInterceptor implements HandlerInterceptor {

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private AuthService authService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 获取请求头中的Authorization令牌
        String authHeader = request.getHeader("Authorization");
        System.out.println(authHeader);
        String requestUri = request.getRequestURI();
        System.out.println(request.getRequestURI());
        // 如果用户访问登录页面，则不进行拦截，直接放行
        if (requestUri.equals("/auth/login")) {
            return true;
        }

        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            // 解析令牌获取用户名和角色信息
            String token = authHeader.substring(7);

            // 检查令牌是否过期
            if (jwtTokenUtil.isTokenExpired(token)) {
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                String errorMessage = "Token Expired";
                PrintWriter writer = response.getWriter();
                writer.print("{\"error\": \"" + errorMessage + "\"}");
                writer.flush();
                return false;
            }

            String username = jwtTokenUtil.getUsernameFromToken(token);

            // 调用Authervice中的方法来获取用户ID
            int userId = authService.getUserIdByUsername(username);

            // 根据用户ID调用AuthService中的方法来获取用户角色
            //注意此处获得的permissions与控制器get方法不同（获得是每个角色对应
            //其是遍历角色列表将拥有的权限不重复添加至list内
            List<Permission> permissions = authService.getPermissionsByUserId(userId);

            // 判断用户是否具有访问当前请求路径的权限
            if (!hasAccess(permissions, request.getRequestURI())) {//获取的uri表示请求的路径部分，不包含协议、主机名和端口号。
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                String errorMessage = "Access Denied";
                PrintWriter writer = response.getWriter();
                writer.print("{\"error\": \"" + errorMessage + "\"}");
                writer.flush();
                return false;
            }
        } else {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String errorMessage = "Unauthorized";
            PrintWriter writer = response.getWriter();
            writer.print("{\"error\": \"" + errorMessage + "\"}");
            writer.flush();
            return false;
        }

        return true;
    }

    private boolean hasAccess(List<Permission> permissions, String requestUri) {
        // 根据角色和权限信息判断是否具有访问权限
        // 可根据自己的业务逻辑进行权限判断，例如遍历角色和权限信息，匹配请求路径是否在允许访问的范围内
        // 可以使用正则表达式或字符串匹配等方式进行判断

        //目前采用遍历权限列表来判断用户是否具有访问权限，细化可根据用户目前角色判断是否具有访问权限
        for (Permission permission : permissions) {
            System.out.println(permission);
            //注意url从数据库取出至后端后会输入末尾的\r，因此需要用正则表达式去掉后再比较
            //String cleanedUrl = permission.getUrl().replaceAll("\r", "");
            // 判断权限是否具有访问权限
            String tmp = permission.getUrl();
            if (permission.getUrl().equals(requestUri)) {
                return true;
            }
        }

        return false;
    }
}

