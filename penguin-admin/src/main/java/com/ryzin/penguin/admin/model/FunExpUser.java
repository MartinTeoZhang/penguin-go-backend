package com.ryzin.penguin.admin.model;

public class FunExpUser extends BaseModel {

    private Long expId;

    private Long userId;

    public Long getExpId() {
		return expId;
	}
    
    public void setExpId(Long expId) {
		this.expId = expId;
	}
    
    public Long getUserId() {
		return userId;
	}
    
    public void setUserId(Long userId) {
		this.userId = userId;
	}
    
}