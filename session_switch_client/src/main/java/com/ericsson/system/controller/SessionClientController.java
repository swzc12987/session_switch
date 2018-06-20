package com.ericsson.system.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ericsson.commons.dto.ResultDto;
import com.ericsson.commons.dto.ResultDtoFactory;
import com.ericsson.system.entities.SessionDto;
import com.ericsson.system.service.SessionService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;

@Api(value = "会话接口", tags = { "会话相关接口" })
@RestController
public class SessionClientController {

    private final Logger log = LoggerFactory.getLogger("SESSION_SWITCH");

    @Autowired
    private SessionService sessionService;

    @ApiOperation(tags = {
	    "会话相关接口" }, value = "通过数据结构对session进行操作", response = ResultDto.class, notes = "通过数据结构对session进行操作")
    @ApiResponse(code = 200, message = "success", response = ResultDto.class)
    @PostMapping("/nbi/deliverysession")
    public ResultDto deliverysession(@RequestBody @Valid SessionDto dto, Long id, HttpServletRequest req, BindingResult bindingResult) {
	try {
	    if (bindingResult.hasErrors()) {
		throw new IllegalArgumentException();
	    }
	    ResultDto result = sessionService.deliverysession(dto);
	    
	    // 根据需要可以使用advice
	    log.info("sendtime: {}, url: {}, result: {}, info: {}",
	    	new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()),
	    	req.getRemoteAddr(),
	    	result.getMessage(),
	    	result.getMessage());
	    return result;
	} catch (Exception e) {
	    e.printStackTrace();
	    return ResultDtoFactory.toNack("operation failed");
	}
	
	
    }

}
