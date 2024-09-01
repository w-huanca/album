package cool.wangshuo.album.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 配置图片资源地址
 */
@Configuration
public class WebPicConfig implements WebMvcConfigurer {

    public static String imagePath = System.getProperty("user.dir") + "/images/";
    public static String imagePace = System.getProperty("user.dir") + "/faceImage/";
//    @Override
//    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/images/**")
//                .addResourceLocations("file:"+imagePath);
//        registry.addResourceHandler("/faceImage/**")
//                .addResourceLocations("file:"+imagePace);
//        System.out.println(imagePath+"\n"+imagePace);
//    }
}
