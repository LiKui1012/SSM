package com.qcby.service.impl;

import com.qcby.dao.EmpDao;
import com.qcby.model.Emp;
import com.qcby.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {
    @Autowired(required = false)
    private EmpDao empDao;
    @Override
    public List<Emp> findAll() {
        System.out.println("业务层：查询所有");
        return this.empDao.findAll();
    }
}
