package cool.wangshuo.album;

import org.jasypt.encryption.StringEncryptor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@SpringBootTest
@RunWith(SpringRunner.class)
public class AlbumApplicationTests {

    @Autowired
    private StringEncryptor stringEncryptor;

    @Test
    public void contextLoads() {
        System.out.println(stringEncryptor.encrypt(""));
    }

}
