package cool.wangshuo.album;

import cool.wangshuo.album.config.WebPicConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.File;

/**
 * 在 SpringBoot 项目启动后执行的代码。主要负责的功能：判断配置文件中的路径是否存在，不存在就创建 <br>
 */

@Component
@Slf4j
public class MyApplicationRunner implements ApplicationRunner {

    public MyApplicationRunner() {
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        log.info("项目启动完成，开始检查目录是否存在");

        File imagePaceFile = new File(WebPicConfig.imagePace);
        File imagePathFile = new File(WebPicConfig.imagePath);

        if (!imagePaceFile.exists()){
            log.info("路径: " + imagePaceFile.getAbsolutePath()+" 不存在，创建目录");
            imagePaceFile.mkdirs();
        }else{
            log.info("路径: " + imagePaceFile.getAbsolutePath()+" 存在");
        }

        if (!imagePathFile.exists()){
            log.info("路径: " + imagePathFile.getAbsolutePath()+" 不存在，创建目录");
            imagePathFile.mkdirs();
        }else{
            log.info("路径: " + imagePathFile.getAbsolutePath()+" 存在");
        }
    }
}
