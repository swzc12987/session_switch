package com.ericsson.system.entities;

import javax.validation.constraints.NotNull;

public class SessionDto {
    
    @NotNull
    private Long deliverySessionId;
    
    @NotNull
    private String actionType;
    
    private String tMGIPool;
    
    private String tMGI;
    
    @NotNull
    private Long startTime;
    
    @NotNull
    private Long stopTime;
    
    @NotNull
    private String version;

    public Long getDeliverySessionId() {
        return deliverySessionId;
    }

    public void setDeliverySessionId(Long deliverySessionId) {
        this.deliverySessionId = deliverySessionId;
    }

    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }

    public String gettMGIPool() {
        return tMGIPool;
    }

    public void settMGIPool(String tMGIPool) {
        this.tMGIPool = tMGIPool;
    }

    public String gettMGI() {
        return tMGI;
    }

    public void settMGI(String tMGI) {
        this.tMGI = tMGI;
    }

    public Long getStartTime() {
        return startTime;
    }

    public void setStartTime(Long startTime) {
        this.startTime = startTime;
    }

    public Long getStopTime() {
        return stopTime;
    }

    public void setStopTime(Long stopTime) {
        this.stopTime = stopTime;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
    
    
    
    

}
