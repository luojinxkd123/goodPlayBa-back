package org.luojin.springboot.config;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Author:luojin
 * @Description:
 * @Date: 2019/9/26 16:41
 */
@Configuration
@EnableSwagger2
@Slf4j
@Data
@ConfigurationProperties(prefix = SwaggerConfig.SWAGGER_PREFIX)
public class SwaggerConfig{
    public final static String SWAGGER_PREFIX = "swagger";

    private String scanPath;
    @Bean
    public Docket createRestApi(){
        log.info("start configuration swagger");
        return  new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(scanPath))
                .paths(PathSelectors.any())
                .build();
    }
    public ApiInfo apiInfo(){
        return new ApiInfoBuilder()
                .title("springboot结合swagger2.0构建api文档")
                .description("简单优雅的restful风格")
                .termsOfServiceUrl("")
                .version("1.0")
                .build();
    }
}
