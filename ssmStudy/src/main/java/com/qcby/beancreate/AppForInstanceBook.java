package com.qcby.beancreate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppForInstanceBook {
    public static void main(String[] args) {

//        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");//这里是spring.xml的路径，我们一定要书写对，该路径是以resource为出发点的相对路径，我们的目录结构中spring.xml放在了spring目录下，因此这里应该这样书写
        BookDao bookDao = (BookDao) ac.getBean("bookDao");

        bookDao.save();

    }
}
