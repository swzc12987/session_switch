package com.ericsson.commons.dto;

import org.springframework.validation.BindingResult;

import com.ericsson.commons.constants.ResultCode;

/**
 * Class Name: ResultDtoFactory
 * 
 * @author SC
 *
 */
public final class ResultDtoFactory {

	private ResultDtoFactory() {
	};

	/**
	 * 创建一个空的返回结果
	 * 
	 * @return
	 */
	private static ResultDto createResultDto() {
		return new ResultDto();
	}

	/**
	 * 创建一个没有返回数据只有返回结果和消息的结果
	 * 
	 * @param code
	 * @param message
	 * @return
	 */
	public static ResultDto toResult(String code, String message) {
		return toResult(code, message, null);
	}

	/**
	 * 创建一个有结果，有数据的返回消息
	 * 
	 * @param code
	 * @param message
	 * @param data
	 * @return
	 */
	public static ResultDto toResult(String code, String message, Object data) {
		return createResultDto().setCode(code).setMessage(message).setData(data);
	}

	public static ResultDto toSuccess(String message) {
		return toResult(ResultCode.SUCCESS, message, null);
	}

	public static ResultDto toSuccess(String message, Object data) {
		return toResult(ResultCode.SUCCESS, message, data);
	}

	public static ResultDto toError(String message) {
		return toResult(ResultCode.ERROR, message, null);
	}

	public static ResultDto toError(String message, Object data) {
		return toResult(ResultCode.ERROR, message, data);
	}

	public static ResultDto toAck(String message) {
		return toAck(message, null);
	}

	public static ResultDto toAckNoCode(String message) {
		return toAckNoCode(message, null);
	}

	public static ResultDto toAck(String message, Object data) {
		return toResult(ResultCode.ACK, message, data);
	}

	public static ResultDto toAckNoCode(String message, Object data) {
		return toResult(null, message, data);
	}

	public static ResultDto toAckNomessage(Object data) {
		return toResult(ResultCode.ACK_NO_MESSAGE, null, data);
	}

	public static ResultDto toAckNomessage(String message, Object data) {
		return toResult(ResultCode.ACK_NO_MESSAGE, message, data);
	}

	public static ResultDto toRedirect(String url) {
		return toResult(ResultCode.REDIRECT, null, url);
	}

	/**
	 * Description: 在controller层直接返回错误消息，避免在controller中用该方法catch异常做处理
	 * 
	 * @param message
	 * @return
	 */
	public static ResultDto toNack(String message) {
		return toNack(message, null);
	}

	public static ResultDto toNackNoCode(String message) {
		return toNackNoCode(message, null);
	}

	/**
	 * Description: 在controller层直接返回错误消息，避免在controller中用该方法catch异常做处理
	 * 
	 * @param error
	 * @return
	 */
	/*public static ResultDto toNack(DisplayableError error) {
		String message = "";
		if (error != null && StringUtils.isNotBlank(error.getErrorCode())) {
			message = MessageUtil.getMessage(error.getDisplayMsg(), error.getArgs());
		}
		return toNack(message, null);
	}
*/
	/**
	 * Description: 在controller层直接返回错误消息，避免在controller中用该方法catch异常做处理
	 * 
	 * @param message
	 * @param data
	 * @return
	 */
	public static ResultDto toNack(String message, Object data) {
		return toResult(ResultCode.NACK, message, data);
	}

	public static ResultDto toNackNoCode(String message, Object data) {
		return toResult(null, message, data);
	}

	public static ResultDto toValidationError(String message, BindingResult br) {
		return toResult(ResultCode.VALIDATION_ERROR, message, br);
	}

/*	private static ResultDto toCommonError(String code, String message, String details) {
		ResultDto dto = createResultDto();
		dto.setCode(ResultCode.COMMON_ERROR);
		StringBuilder text = new StringBuilder();
		if (StringUtils.isBlank(message)) {
			text.append(MessageUtil.getMessage(EErrorCode.COMM_INTERNAL_ERROR.getDisplayMsg())).append("[")
					.append("时间：").append((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date())).append("]");
		} else {
			text.append(message);
		}
		if (StringUtils.isNotBlank(code)) {
			text.append("(").append(code).append(")");
		}
		dto.setMessage(text.toString());
		if (!AppConfigUtil.isProdEnv()) {
			dto.setData(details);
		}
		return dto;
	}*/

	/**
	 * Description: 异常的stacktrace和message将在非生产环境中显示出来
	 * 
	 * @param e
	 * @return
	 */
	/*public static ResultDto toCommonError(BaseException e) {
		String message = MessageUtil.getMessage(e.getError().getDisplayMsg());
		return toCommonError(e.getError().getErrorCode(), message, ExceptionUtils.getStackTrace(e));
	}*/

	/**
	 * Description: 异常的stacktrace和message将在非生产环境中显示出来
	 * 
	 * @param e
	 * @return
	 */
	/*public static ResultDto toCommonError(Exception e) {
		return toCommonError(null, null, ExceptionUtils.getStackTrace(e));
	}*/

	/**
	 * Description: 传入的msg将显示出来
	 * 
	 * @param message
	 * @return
	 */
	/*public static ResultDto toCommonError(String message) {
		return toCommonError(null, message, null);
	}

	public static ResultDto toBizError(String message, Exception e) {
		ResultDto dto = createResultDto().setCode(ResultCode.BUSINESS_ERROR)
				.setMessage(message == null ? e.getMessage() : message);
		if (!AppConfigUtil.isProdEnv()) {
			dto.setData(ExceptionUtils.getStackTrace(e));
		}
		return dto;
	}*/
}
