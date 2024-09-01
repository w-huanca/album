package cool.wangshuo.album.config;

import cool.wangshuo.album.interceptor.AuthInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {
    // ......
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new AuthInterceptor())
                .addPathPatterns("/**");
//                .excludePathPatterns(
//                        "/**/*.html",
//                        "/**/*.css",
//                        "/**/*.js",
//                        "/**/*.ico",
//                        "/**/*.map",
//                        "/**/*.jpg",
//                        "/**/*.png"
//                );
    }
}
