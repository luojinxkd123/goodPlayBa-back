package org.luojin.springboot.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.luojin.springboot.entity.App;
import org.luojin.springboot.service.IAppService;
import org.luojin.springboot.web.ro.JsonResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author:luojin
 * @apiNote:
 * @since: 2020-07-17 18:34
 */
@RestController
@RequestMapping("/app")
public class MainController {
    @Autowired
    private IAppService appService;

    @GetMapping("/appList")
    public JsonResponse<List<App>> appList(){
        return JsonResponse.success(appService.list(new QueryWrapper<App>().lambda().eq(App::getStatus, Boolean.TRUE)));
    }
}
