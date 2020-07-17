package org.luojin.springboot.service.impl;

import org.luojin.springboot.entity.User;
import org.luojin.springboot.mapper.UserMapper;
import org.luojin.springboot.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author luojin
 * @since 2019-09-27
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
