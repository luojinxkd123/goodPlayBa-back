package org.luojin.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author luojin
 * @since 2020-07-17
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_app")
@ApiModel(value="App对象", description="")
public class App extends Model<App> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "应用名称")
    private String appName;

    @ApiModelProperty(value = "是否需要运行（1：需要，0：不需要）")
    private Boolean status;

    @ApiModelProperty(value = "最新钻石数量")
    private Double diamond;

    @ApiModelProperty(value = "关联手机号")
    private String telephone;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
