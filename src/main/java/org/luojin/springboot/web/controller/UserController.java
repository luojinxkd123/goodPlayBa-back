package org.luojin.springboot.web.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.luojin.springboot.entity.User;
import org.luojin.springboot.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author:luojin
 * @Description:
 * @Date: 2019/9/26 16:22
 */
@Api(description = "用户")
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;

    @ApiOperation("获取用户")
    @GetMapping("/list")
    public List<User> getUserList() {
        return userService.list();
    }
}
