package com.example.agile0509.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Junzhe
 * @ClassName CorsConfig
 * @date 2023/5/16 16:40
 */

/**
 * @author YuanYue
 * 进行修改：明确允许content-type，避免服务器未正确处理预检请求
 * @date 2023/5/20
 */

@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {  //解决springboot和ajax传数据时请求跨域的问题
        registry.addMapping("/**")
                .allowedHeaders("*")
                .allowedMethods("GET", "HEAD", "POST", "PUT", "DELETE","OPTIONS")
                .allowedOriginPatterns("*")
                .allowCredentials(true)
                .exposedHeaders("content-type")  // 明确允许 "content-type" 头部字段在跨域请求的响应中被暴露出来,解决跨域
                .maxAge(3600);

        registry.addMapping("/**")
                .allowedHeaders("x-requested-with", "Authorization", "content-type"); // 添加允许的请求头

        WebMvcConfigurer.super.addCorsMappings(registry);
    }

}

