package cool.wangshuo.album.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 前端实体类
 */


@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVo {

    /**
     * 用户昵称
     */
    private String username;
    /**
     * 用户帐号
     */
    private String userNum;
    /**
     * 用户密码
     */
    private String passwd;

    private String passwdRepeat;

    /**
     * 用户电话
     */
    private String phone;

    /**
     * 用户地址
     */
    private String address;

    /**
     * 用户QQ
     */
    private String qqCode;


}
