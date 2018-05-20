package com.ctp.ghub.mq.producer.service;

import org.apache.log4j.Logger;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.TextMessage;

/**
 * Created by Administrator on 2018/5/20 0020.
 */
@Service
public class ConsumerService {
    private static final Logger logger = Logger.getLogger(ConsumerService.class);

    @Resource(name="jmsTemplate")
    private JmsTemplate jmsTemplate;

    /**
     * 接收消息
     * @param destination
     * @return
     */
    public TextMessage receiveMessage(Destination destination) {
        TextMessage tm = (TextMessage) jmsTemplate.receive(destination);
        try {
            System.out.println("从队列" + destination.toString() + "收到了消息=======;消息内容是：" + tm.getText());
            logger.info("从队列" + destination.toString() + "收到了消息=======;消息内容是：" + tm.getText());
        } catch (JMSException e) {
            logger.error("activemq在接受消息时发生的异常: ",e);
        }
        return tm;
    }
}
