package org.luojin.springboot.service.impl;

import org.luojin.springboot.entity.Log;
import org.luojin.springboot.mapper.LogMapper;
import org.luojin.springboot.service.ILogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luojin
 * @since 2020-07-17
 */
@Service
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements ILogService {

}
