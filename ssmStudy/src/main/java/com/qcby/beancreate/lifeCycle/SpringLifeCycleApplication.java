package com.qcby.beancreate.lifeCycle;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringLifeCycleApplication {
    public static void main(String[] args) {

        System.out.println("现在开始初始化容器！！！");

//        ApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
        ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");//这里是spring.xml的路径，我们一定要书写对，该路径是以resource为出发点的相对路径，我们的目录结构中spring.xml放在了spring目录下，因此这里应该这样书写

        System.out.println("容器初始化成功！！！");

        System.out.println("现在开始关闭容器！！！");
//        ((ClassPathXmlApplicationContext)context).registerShutdownHook();
        ac.registerShutdownHook();
    }
}
