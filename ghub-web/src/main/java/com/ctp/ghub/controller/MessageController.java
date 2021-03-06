package com.ctp.ghub.controller;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.TextMessage;

import com.ctp.ghub.enums.sms.SmsMessageEnum;
import com.ctp.ghub.model.MessageEntity;
import com.ctp.ghub.model.Result;
import com.ctp.ghub.mq.consumer.service.ConsumerService;
import com.ctp.ghub.service.SmsMessageService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author chengtianping
 * @description
 * @date 2018/7/24
 */
@Controller
@RequestMapping("/api/ghub/message")
@Api(value="message controller",description="消息操作相关")
public class MessageController {

    private static final Logger logger = Logger.getLogger(MessageController.class);

    /**
     * 消息地址
     */
    @Resource(name="ghubQueueDestination")
    private Destination ghubQueueDestination;

    @Autowired
    private SmsMessageService smsMessageService;

    /**
     * 消息队列消费者
     */
    @Resource(name="consumerService")
    private ConsumerService consumer;

    /**
     * 发送短信
     * @param messageEntity
     * @return
     */
    @RequestMapping(value="/sendMessage",method= RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value="发送消息",notes="发送队列消息",httpMethod = "POST")
    public Result<String> sendMessage(@ApiParam(name="messageEntity实体",value="json格式",required=true)@RequestBody MessageEntity messageEntity) {
        logger.info("正在发送消息，消息内容是：" + messageEntity.getPhone());
        String verifyCode = smsMessageService.generateVerifyCode(SmsMessageEnum.REGISTER_VERIFY_CODE.getCode(), messageEntity.getPhone(), 6);
        smsMessageService.send(SmsMessageEnum.REGISTER_VERIFY_CODE.getCode(),messageEntity.getPhone(),verifyCode);
        return Result.createSuccessResult(verifyCode);
    }

    /**
     * 消息接收器 接受消息
     * @return
     * @throws JMSException
     */
    @RequestMapping(value="/receiveMessage",method=RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value="接收信息",notes="接收队列消息",httpMethod = "GET")
    public Result<String> receiveMessage() throws JMSException {
        TextMessage tm = consumer.receiveMessage(ghubQueueDestination);
        logger.info("已接收到消息，消息内容是：" + tm.getText());
        return Result.createSuccessResult(tm.getText());
    }
}
