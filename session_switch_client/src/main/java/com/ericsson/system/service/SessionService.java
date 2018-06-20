package com.ericsson.system.service;

import com.ericsson.commons.dto.ResultDto;
import com.ericsson.system.entities.SessionDto;

public interface SessionService {
    
    ResultDto deliverysession(SessionDto dto);
    
}
