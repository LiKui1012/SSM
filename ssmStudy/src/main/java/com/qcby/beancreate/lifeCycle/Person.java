package com.qcby.beancreate.lifeCycle;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class Person implements InitializingBean, DisposableBean, BeanNameAware, BeanFactoryAware, ApplicationContextAware {

    private String name;
    private String sex;

    Person() {
        System.out.println("Person 实例化");
    }

    public void setSex(String sex) {
        System.out.println("Person 注入{sex}属性");
        this.sex = sex;
    }

    public void setName(String name) {
        System.out.println("Person 注入{name}属性");
        this.name = name;
    }


    public void myInit() {
        System.out.println("Person 的初始化myInit()方法");
    }

    public void myDestory() {
        System.out.println("Person 的初始化myDestory()方法");
    }


    @Override
    public void setBeanName(String s) {
        System.out.println("【BeanNameAware接口】调用BeanNameAware.setBeanName()");
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        System.out.println("【BeanFactoryAware】调用BeanFactoryAware.setBeanFactory()");

    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        System.out.println("【ApplicationContextAware】调用ApplicationContextAware.setApplicationContext()");

    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("【InitializingBean】调用InitializingBean.afterPropertiesSet()");
    }

    @Override
    public void destroy() throws Exception {
        System.out.println("【DisposableBean】调用DisposableBean.destroy()");
    }
}
