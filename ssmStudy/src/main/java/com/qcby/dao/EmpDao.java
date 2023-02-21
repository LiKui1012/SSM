package com.qcby.dao;

import com.qcby.model.Emp;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface EmpDao {
    public List<Emp> findAll();

}


