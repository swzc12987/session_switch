package com.ericsson.system.service.impl;

import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.ericsson.commons.dto.ResultDto;
import com.ericsson.commons.dto.ResultDtoFactory;
import com.ericsson.system.constant.UrlConstant;
import com.ericsson.system.entities.SessionDto;
import com.ericsson.system.enums.ActionTypeEnum;
import com.ericsson.system.service.SessionService;

@Service
public class SessionServiceImpl implements SessionService{
    
    @Autowired
    private RestTemplate restTemplate;

    @Override
    public ResultDto deliverysession(SessionDto dto) {
	try {
	    if (ActionTypeEnum.Start.toString().equals(dto.getActionType())) {
	        return start(dto);
	    } else {
	        return stop(dto);
	    }
	} catch (Exception e) {
	    throw e;
	}
	
    }
    
    
    private ResultDto start(SessionDto dto){
	return restTemplate.postForObject(UrlConstant.SERVER_URL + "session-server/deliverysession?id=" + dto.getDeliverySessionId().toString(), dto, ResultDto.class);
    }
    
    private ResultDto stop(SessionDto dto) {
	if (dto.getStopTime() != null) {
	    ExecutorService threadPool = Executors.newCachedThreadPool();
	    threadPool.submit(() -> {
		new Timer().schedule(new TimerTask() {
		    @Override
		    public void run() {
			restTemplate.postForObject(UrlConstant.SERVER_URL + "session-server/deliverysession?id=" + dto.getDeliverySessionId().toString(), dto, ResultDto.class);
		    }
		}, dto.getStopTime());
	    });
	    return ResultDtoFactory.toSuccess("the session[" + dto.getDeliverySessionId() + "] will be closed in " + dto.getStopTime() + " millisecond");
	} else {
	    return restTemplate.postForObject(UrlConstant.SERVER_URL + "session-server/deliverysession?id=" + dto.getDeliverySessionId().toString(), dto, ResultDto.class);
	}
	
    }
    
    
    

}
