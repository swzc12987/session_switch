package com.ericsson.server.system.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ericsson.commons.dto.ResultDto;
import com.ericsson.commons.dto.ResultDtoFactory;
import com.ericsson.server.system.entities.SessionDto;
import com.ericsson.server.system.enums.ActionTypeEnum;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;

@Api(value = "会话接口", tags = { "会话相关接口" })
@RestController
@RequestMapping("/session-server")
public class SessionServerController {
    
    private final Logger log = LoggerFactory.getLogger(getClass());

    @ApiOperation(tags = { "会话相关接口" }, value = "通过数据结构对session进行操作", response = ResultDto.class, notes = "通过数据结构对session进行操作")
    @ApiResponse(code = 200, message = "success", response = ResultDto.class)
    @PostMapping("/deliverysession")
    public ResultDto sessionStart(@RequestBody SessionDto dto, String id) {
	if (ActionTypeEnum.Start.toString().equals(dto.getActionType())) {
	    log.info("start session sucess!!");
	    return ResultDtoFactory.toSuccess("start session sucess!!");
	} else {
	    System.out.println("stop session sucess!!!");
	    log.info("stop session sucess!!");
	    return ResultDtoFactory.toSuccess("stop session sucess!!");
	}
    }
    
}
