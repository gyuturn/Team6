package com.kaspi.backend.util.response.code;

public enum ErrorCode implements Code {
    PARAMETER_ERROR("E001", "요청 데이터 형식이 올바르지 않습니다.");


    private String code;
    private String message;

    ErrorCode(String code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public String getCode() {
        return null;
    }

    @Override
    public String getMessage() {
        return null;
    }
}
