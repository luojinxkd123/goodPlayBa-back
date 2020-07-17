package org.luojin.springboot.service.impl;

import org.luojin.springboot.entity.App;
import org.luojin.springboot.mapper.AppMapper;
import org.luojin.springboot.service.IAppService;
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
public class AppServiceImpl extends ServiceImpl<AppMapper, App> implements IAppService {

}
