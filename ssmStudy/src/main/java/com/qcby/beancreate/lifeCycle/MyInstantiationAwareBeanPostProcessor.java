package com.qcby.beancreate.lifeCycle;

import org.springframework.beans.BeansException;
import org.springframework.beans.PropertyValues;
import org.springframework.beans.factory.config.InstantiationAwareBeanPostProcessor;

import java.beans.PropertyDescriptor;

public class MyInstantiationAwareBeanPostProcessor implements InstantiationAwareBeanPostProcessor {
    @Override
    public Object postProcessBeforeInstantiation(Class<?> beanClass, String beanName) throws BeansException {
        System.out.println("调用【InstantiationAwareBeanPostProcessor】的【postProcessBeforeInstantiation】方法");
        return null;
    }

    @Override
    public boolean postProcessAfterInstantiation(Object bean, String beanName) throws BeansException {
        System.out.println("调用【InstantiationAwareBeanPostProcessor】的【postProcessAfterInstantiation】方法");
        return true;
    }

    @Override
    public PropertyValues postProcessPropertyValues(PropertyValues pvs, PropertyDescriptor[] pds, Object bean, String beanName) throws BeansException {
        System.out.println("调用【InstantiationAwareBeanPostProcessor】的【postProcessProperties】方法");
        return pvs;
    }
}
