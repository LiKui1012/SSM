package com.qcby;

import com.qcby.service.EmpService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {
    @Test
    public void run(){
        ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");//这里是spring.xml的路径，我们一定要书写对，该路径是以resource为出发点的相对路径，我们的目录结构中spring.xml放在了spring目录下，因此这里应该这样书写
        EmpService service = ac.getBean(EmpService.class);
        service.findAll();
    }
}
