package org.luojin.springboot.model.vo;

import lombok.Data;

/**
 * @author:luojin
 * @apiNote:
 * @since: 2020/7/17 22:47
 */
@Data
public class AddLogDto {
    private String appName;
    private Boolean isOk;
    private String log;
}
