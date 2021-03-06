package cn.javass.point.exception;

/**
 * 购买失败异常,表示没有足够的兑换码
 * @author Zhang Kaitao
 *
 */
public class NotCodeException extends RuntimeException {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String errorMsg;

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }
    public NotCodeException(String errorMsg){
        this.errorMsg = errorMsg;
    }
}
