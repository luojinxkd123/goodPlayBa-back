package org.luojin.springboot.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.luojin.springboot.entity.App;
import org.luojin.springboot.entity.Log;
import org.luojin.springboot.service.IAppService;
import org.luojin.springboot.service.ILogService;
import org.luojin.springboot.web.ro.JsonResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * @author:luojin
 * @apiNote:
 * @since: 2020-07-17 18:34
 */
@RestController
@RequestMapping("/app")
public class AppController {
    @Autowired
    private IAppService appService;
    @Autowired
    private ILogService logService;

    @PostMapping("/appList")
    public JsonResponse<List<String>> appList(@RequestParam("device")String deviceName){
        LocalDate date = LocalDate.now();
        List<String> list = appService.list(
                new QueryWrapper<App>()
                        .lambda()
                        .eq(App::getStatus, Boolean.TRUE)
                        .eq(App::getDeviceName,deviceName)
                        .orderByAsc(App::getId)
        ).stream().map(l -> l.getAppName()).collect(Collectors.toList());

        List<String> successList = logService.list(
                new QueryWrapper<Log>()
                        .eq("date", date.getYear()+"-"+date.getMonthValue()+"-"+date.getDayOfMonth())
                        .eq("status", Boolean.TRUE)
                        .eq("device_name",deviceName)
        ).stream().map(l -> l.getAppName()).collect(Collectors.toList());
        if (successList.size() > 0) {
            list = list.stream().filter(l -> !successList.contains(l)).collect(Collectors.toList());
        }
        return JsonResponse.success(list);
    }

    @PostMapping("/addLog")
    public JsonResponse addLog(HttpServletRequest request, @RequestParam("appName") String appName,
                               @RequestParam("deviceName") String deviceName,
                               @RequestParam("isOk") String isOk,
                               @RequestParam("log") String log) {
        Date date=new Date();
        LocalDate localDate = LocalDate.now();
        Boolean status = Boolean.FALSE;
        if ("true".equals(isOk)) {
            status = true;
        }
        Log todayLog = logService.getOne(
                new QueryWrapper<Log>()
                        .eq("app_name", appName)
                        .eq("date", localDate.getYear() + "-" + localDate.getMonthValue() + "-" + localDate.getDayOfMonth())
                        .eq("device_name", deviceName)
        );
        if (Objects.isNull(todayLog)) {
            logService.getBaseMapper().insert(
                    new Log()
                            .setAppName(appName)
                            .setDeviceName(deviceName)
                            .setDate(date)
                            .setLog(log)
                            .setStatus(status)
                            .setIp(request.getHeader("x-real-ip"))
            );
        } else {
            todayLog.setStatus(status);
            todayLog.setLog(todayLog.getLog() + ";  " + log);
            logService.updateById(todayLog);
        }

        return JsonResponse.successMessage("成功");
    }

    @PostMapping("/recordDiamond")
    public JsonResponse recordDiamond(@RequestParam("appName") String appName,
                                      @RequestParam("deviceName") String deviceName,
                               @RequestParam("score") Double score){
        App app = appService.getOne(
                new QueryWrapper<App>()
                        .lambda()
                        .eq(App::getAppName, appName)
                        .eq(App::getDeviceName, deviceName)
        );
        app.setDiamond(score);
        appService.updateById(app);
        return JsonResponse.successMessage("成功");
    }
    @PostMapping("/disabledApp")
    public JsonResponse disabledApp(@RequestParam("appName") String appName,
                                      @RequestParam("deviceName") String deviceName){
        App app = appService.getOne(
                new QueryWrapper<App>()
                        .lambda()
                        .eq(App::getAppName, appName)
                        .eq(App::getDeviceName, deviceName)
        );
        app.setStatus(Boolean.FALSE);
        app.setIsOver(Boolean.TRUE);
        appService.updateById(app);
        return JsonResponse.successMessage("成功");
    }
}
